/***********************************
 * 文件名称：main.cpp
 * 头 文 件：servo.h
 * 功    能：提供伺服控制的基本框架
 *           定义各子线程;
 ***********************************
 * TODO:
 * *********************************/
 
#include "../include/common.h"
#include "../include/servo.h"

/*** 接口常量 ***/
// 夹爪接口常量
const char* port = "/dev/ttyS110";
int baudrate = 115200;
uint8_t axis_id = 0;

// PID控制参数
double kp = 0.0008;
double ki = 0.0000;
double kd = 0.00008;
/*** 接口常量 ***/

/*** User's global variables ***/
int shmid;                     // 共享内存标识符
void *shm_addr = NULL;         // 存放共享内存的起始地址
struct shm_interface shm_servo_inter; // 线程结束的标志
// 定义共享内存时用到的互斥锁-全局
pthread_mutex_t servo_inter_mutex = PTHREAD_MUTEX_INITIALIZER; 
extern SVO pSVO;               // 各线程共享的全局变量
pthread_mutex_t mymutex;       // Shanw互斥锁
pthread_cond_t rt_msg_cond;    // Shawn条件变量
cpu_set_t mask;
/*** User's global variables ***/

/* Pre-fault our task */ 

// 申请一块内存并初始化
void stack_prefault(void) {
  unsigned char dummy[MAX_SAFE_STACK];
  memset(dummy, 0, MAX_SAFE_STACK); //初始化dummy[]所在的内存空间
  return;
}

int main(void) {
  struct timespec t;        // linux系统的高精度时间变量，两个成员：秒 和 纳秒
  struct sched_param param; // 描述线程调度参数，获得或设置线程的调度参数时会使用该结构体
  int interval = SERVO_INTERVAL;  // 一个伺服周期内的纳秒数

  /*** User variables ***/
  pthread_t interface_thread, rscv_thread; //创建线程标识符
  shm_servo_inter.status_control = INIT_C; 
  int loop_flag = 0;        // 循环标志，在第一次进入伺服线程时使用
  /*** User variables ***/

  /*** Initialization ***/
  // Connect to RmClawer
  RmDriver rm(port, baudrate, axis_id);
  rm.goHome();
  // rm.setMotion(1000, 3000, 3000);
  rm.setPush(15, 10, 10);
  pSVO.Flag.ForceFlag = 0;

  // Connect to UsbV20
  if (-1 == OpenUsbV20()) {
    printf("...... UsbV20! Open! Failed! ......\n");
  }

  // Reset save buffer
  SaveDataReset();    // 初始化待存档数据的队列
  ServoSaveDataReset();

  // 创建共享内存
  shmid = shmget((key_t)1234, 72, 0666 | IPC_CREAT);
  if (shmid == -1) {
    fprintf(stderr, "shmat failed\n");
    exit(EXIT_FAILURE); //失败地退出函数
  }
  shm_addr = (void *)shmat(shmid, 0, 0); // 将共享内存连接到当前进程的地址空间(映射共享内存)

  // 初始化set集，将set置为空
  CPU_ZERO(&mask);
  // 将1-4号CPU加入集合(有0号CPU)
  CPU_SET(5,&mask);
  // 设置CPU亲和性
  if(pthread_setaffinity_np(pthread_self(), sizeof(mask), &mask) < 0) {
    fprintf(stderr, "### Error ###/n=== Set servo affinity failed\n");
  }
  usleep(1000);
  /*** Initialization ***/

  /* Declare ourself as a real time task */
  param.sched_priority = MY_PRIORITY;  // 设置进程的优先级
  // 设置线程的调度策略和调度参数
  if (sched_setscheduler(0, SCHED_FIFO, &param) == -1) {
    perror("sched_setscheduler failed\n");
    exit(-1);
  }

  /* Lock memory */
  // 锁住内存， mlockall不仅锁定当前的地址空间，也要锁定将来申请的地址空间
  if (mlockall(MCL_CURRENT | MCL_FUTURE) == -1) {
    perror("mlockall failed");
    exit(-2);
  }

  stack_prefault();
  clock_gettime(CLOCK_MONOTONIC, &t); //读取当前精确时间给t

  /* start after one second */
  t.tv_sec++;    // 一秒后启动控制回路

  /*** Start user's thread ***/
  printf("\nExperiment Start\n");
  //选择操作、输入参数线程
  if (pthread_create(&interface_thread, NULL, interface_function, NULL)) {
    perror("interface_thread create\n");
    exit(1);
  }
 //realsense图像处理线程
  if (pthread_create(&rscv_thread, NULL, rscv, NULL)) {
    perror("Display_thread create\n");
    exit(1);
  }
  /*** Start user's thread ***/

  while (1) {
    /*** 设置退出条件 ***/
    if (shm_servo_inter.status_control == EXIT_C) {
      printf("Program end\n");
      if (shmdt(shm_addr) == -1) {    // 分离共享内存
        printf("shmdt error!\n");
        exit(1);
      }
      break;
    }
    /*** 设置退出条件 ***/

    /* wait until next shot */
    // 基于CLOCK_MONOTONIC时钟，睡眠到参数t指定的时间，随后将执行权限交给其他的进程
    clock_nanosleep(CLOCK_MONOTONIC, TIMER_ABSTIME, &t, NULL); 

    /*** do the stuff ***/
    if (loop_flag == 0){    // 循环进行第一次时，初始化时间
      ResetTime();
      loop_flag = 1;
    }

    servo_function(&rm);    // 伺服程序
    /*** do the stuff ***/

    /* calculate next shot */
    t.tv_nsec += interval;

    // 时间进制，保证时间纳秒加到上限就进位
    while (t.tv_nsec >= NSEC_PER_SEC) {
      t.tv_nsec -= NSEC_PER_SEC;
      t.tv_sec++;
    }
  } // 伺服线程的死循环

  /*** 实验结束，处理实验数据 ***/
  rm.close();         // 断开夹爪
  ExpDataWrite();     // 保持实验存数据 (Exp_data[i])
  ServoDataWrite();
  std::cout << "=== Servo: data saved." << std::endl;
  /*** 实验结束，处理实验数据 ***/

  /*** 等待子线程结束 ***/
  // 唤醒等待的条件变量
  pthread_mutex_lock(&mymutex);
  pthread_cond_signal(&rt_msg_cond);
  pthread_mutex_unlock(&mymutex);
  // 等待rscv线程结束
  if (pthread_join(rscv_thread, NULL)) {
    perror("pthread_join at collect_thread\n");
    exit(1);
  }
  // 等待interface线程结束
  if (pthread_join(interface_thread, NULL)) {
    perror("pthread_join at interface_thread\n");
    exit(1);
  }
  std::cout << "=== end of all" << std::endl;
  /*** 等待子线程结束 ***/

  exit(1);    // 退出程序
}


/* ==================== User defined Function ==================== */
/* 采集相机数据、计算压力信号 */
void *collect_function(void *param) {
  SVO display_svo;         //这是最主要的存放数据的变量
  double time;

  do {
    time = GetCurrentTime();
    SvoRead(&display_svo); // Read data

    display_svo.State.Refforce = 150 + 50*sin(0.5*time);

    SvoWrite(&display_svo);
    usleep(25000);         // 采集间隔
  } while (shm_servo_inter.status_control != EXIT_C);
  return ((void *)0);
}

/* interface线程运行的函数，用于选择操作、输入参数 */
void *interface_function(void *param) {

  int interface_counter; //记录下面循环的次数
  interface_counter = 0;
  int end = 1; //该线程函数的结束标志，用户选择e:退出，则归0，退出循环
  int command, i;
  double time;
  SVO interface_svo; //存放在这个线程中 产生的机器人控制信息，最后都会传给pSVO

  printf("Executing interface function\n");
  DisplayMenu(); //显示选项信息

  do {
    // Display the current of the robot:
    // Wait command
    printf("Please hit any key\n");

    command = getchar();
    SvoRead(&interface_svo);
    switch (command) {
      case 'c':
      case 'C':
        printf("Hello, this function is not finished.\n");
        break;
      case 'f':
      case 'F':
        printf("Force:\n");
        scanf("%lf", &interface_svo.State.Refforce);
        interface_svo.Flag.ForceFlag = ON;
        SvoWrite(&interface_svo);
        break;
      case 's':
      case 'S':
        printf("Start\n");
        // pSVO.ServoFlag = ON;
        SetSvo(&interface_svo);
        pSVO.Flag.ServoFlag = ON;
        break;
      case 'i':
      case 'I':
        DisplayCurrentInformation();
        break;
      case 'e':
      case 'E':
        end = 0;
        shm_servo_inter.status_control = EXIT_C;
        break;
      default:
        DisplayMenu();
        break;
    }
    interface_counter++;
  } while (end);
  // sleep(4);
  printf("===== Interface thread end ! ! !\n");
  printf("End of Experiment\n");
  return 0;
}

void DisplayMenu() {
  printf("\n**************Menu (please input [CR])*****************\n");
  printf("CurPosOfHnd:*************[c : C]\n");
  printf("Gain:********************[g : G]\n");
  printf("Path:********************[p : P]\n");
  printf("Start:*******************[s : S]\n");
  printf("Info:********************[i : I]\n");
  printf("Destination:*************[d : D]\n");
  printf("End:*********************[e : E :ESC]\n");
}

void DisplayCurrentInformation(){
  SVO display_info_svo;
  SvoRead(&display_info_svo);

  printf("----------------- Current Information -------------------\n");
  printf("Last position[mm]: %.2f\n", display_info_svo.Motion.Lasth);
  printf("Current position[mm]: %.2f\n", display_info_svo.Motion.Curh);
  printf("Current Force[N]: %.2f\n", display_info_svo.State.Curforce);
  printf("Current Time[s]: %.2f\n", display_info_svo.Time.Curtime);
}

