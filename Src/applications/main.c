/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "dma.h"
#include "i2c.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "tx_api.h"
#include "common/tracex.h"
#include "common/log.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define DEMO_STACK_SIZE 1024
#define DEMO_BYTE_POOL_SIZE 9120
#define DEMO_BLOCK_POOL_SIZE 100
#define DEMO_QUEUE_SIZE 100
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */
TX_THREAD thread_0;
TX_THREAD thread_1;
TX_THREAD thread_2;
TX_THREAD thread_3;
TX_THREAD thread_4;
TX_THREAD thread_5;
TX_THREAD thread_6;
TX_THREAD thread_7;
TX_QUEUE queue_0;
TX_SEMAPHORE semaphore_0;
TX_MUTEX mutex_0;
TX_EVENT_FLAGS_GROUP event_flags_0;
TX_BYTE_POOL byte_pool_0;
TX_BLOCK_POOL block_pool_0;
UCHAR memory_area[DEMO_BYTE_POOL_SIZE];

/* Define the counters used in the demo application...  */

ULONG thread_0_counter;
ULONG thread_1_counter;
ULONG thread_1_messages_sent;
ULONG thread_2_counter;
ULONG thread_2_messages_received;
ULONG thread_3_counter;
ULONG thread_4_counter;
ULONG thread_5_counter;
ULONG thread_6_counter;
ULONG thread_7_counter;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */
void thread_0_entry(ULONG thread_input);
void thread_1_entry(ULONG thread_input);
void thread_2_entry(ULONG thread_input);
void thread_3_and_4_entry(ULONG thread_input);
void thread_5_entry(ULONG thread_input);
void thread_6_and_7_entry(ULONG thread_input);

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_I2C1_Init();
  MX_USART1_UART_Init();
  MX_TIM4_Init();
  MX_USART2_UART_Init();
  /* USER CODE BEGIN 2 */

  LOG("begin trace")
  TraceX_EnableTrace();

  LOG("begin kernel")
  tx_kernel_enter();
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV2;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
  /** Enables the Clock Security System
  */
  HAL_RCC_EnableCSS();
}

/* USER CODE BEGIN 4 */
/* Define what the initial system looks like.  */

void tx_application_define(void *first_unused_memory)
{

  CHAR *pointer = TX_NULL;

  /* Create a byte memory pool from which to allocate the thread stacks.  */
  tx_byte_pool_create(&byte_pool_0, "byte pool 0", memory_area, DEMO_BYTE_POOL_SIZE);

  /* Put system definition stuff in here, e.g. thread creates and other assorted
       create information.  */

  /* Allocate the stack for thread 0.  */
  tx_byte_allocate(&byte_pool_0, (VOID **)&pointer, DEMO_STACK_SIZE, TX_NO_WAIT);

  /* Create the main thread.  */
  tx_thread_create(&thread_0, "thread 0", thread_0_entry, 0,
                   pointer, DEMO_STACK_SIZE,
                   1, 1, TX_NO_TIME_SLICE, TX_AUTO_START);

  /* Allocate the stack for thread 1.  */
  tx_byte_allocate(&byte_pool_0, (VOID **)&pointer, DEMO_STACK_SIZE, TX_NO_WAIT);

  /* Create threads 1 and 2. These threads pass information through a ThreadX 
       message queue.  It is also interesting to note that these threads have a time
       slice.  */
  tx_thread_create(&thread_1, "thread 1", thread_1_entry, 1,
                   pointer, DEMO_STACK_SIZE,
                   16, 16, 4, TX_AUTO_START);

  /* Allocate the stack for thread 2.  */
  tx_byte_allocate(&byte_pool_0, (VOID **)&pointer, DEMO_STACK_SIZE, TX_NO_WAIT);

  tx_thread_create(&thread_2, "thread 2", thread_2_entry, 2,
                   pointer, DEMO_STACK_SIZE,
                   16, 16, 4, TX_AUTO_START);

  /* Allocate the stack for thread 3.  */
  tx_byte_allocate(&byte_pool_0, (VOID **)&pointer, DEMO_STACK_SIZE, TX_NO_WAIT);

  /* Create threads 3 and 4.  These threads compete for a ThreadX counting semaphore.  
       An interesting thing here is that both threads share the same instruction area.  */
  tx_thread_create(&thread_3, "thread 3", thread_3_and_4_entry, 3,
                   pointer, DEMO_STACK_SIZE,
                   8, 8, TX_NO_TIME_SLICE, TX_AUTO_START);

  /* Allocate the stack for thread 4.  */
  tx_byte_allocate(&byte_pool_0, (VOID **)&pointer, DEMO_STACK_SIZE, TX_NO_WAIT);

  tx_thread_create(&thread_4, "thread 4", thread_3_and_4_entry, 4,
                   pointer, DEMO_STACK_SIZE,
                   8, 8, TX_NO_TIME_SLICE, TX_AUTO_START);

  /* Allocate the stack for thread 5.  */
  tx_byte_allocate(&byte_pool_0, (VOID **)&pointer, DEMO_STACK_SIZE, TX_NO_WAIT);

  /* Create thread 5.  This thread simply pends on an event flag which will be set
       by thread_0.  */
  tx_thread_create(&thread_5, "thread 5", thread_5_entry, 5,
                   pointer, DEMO_STACK_SIZE,
                   4, 4, TX_NO_TIME_SLICE, TX_AUTO_START);

  /* Allocate the stack for thread 6.  */
  tx_byte_allocate(&byte_pool_0, (VOID **)&pointer, DEMO_STACK_SIZE, TX_NO_WAIT);

  /* Create threads 6 and 7.  These threads compete for a ThreadX mutex.  */
  tx_thread_create(&thread_6, "thread 6", thread_6_and_7_entry, 6,
                   pointer, DEMO_STACK_SIZE,
                   8, 8, TX_NO_TIME_SLICE, TX_AUTO_START);

  /* Allocate the stack for thread 7.  */
  tx_byte_allocate(&byte_pool_0, (VOID **)&pointer, DEMO_STACK_SIZE, TX_NO_WAIT);

  tx_thread_create(&thread_7, "thread 7", thread_6_and_7_entry, 7,
                   pointer, DEMO_STACK_SIZE,
                   8, 8, TX_NO_TIME_SLICE, TX_AUTO_START);

  /* Allocate the message queue.  */
  tx_byte_allocate(&byte_pool_0, (VOID **)&pointer, DEMO_QUEUE_SIZE * sizeof(ULONG), TX_NO_WAIT);

  /* Create the message queue shared by threads 1 and 2.  */
  tx_queue_create(&queue_0, "queue 0", TX_1_ULONG, pointer, DEMO_QUEUE_SIZE * sizeof(ULONG));

  /* Create the semaphore used by threads 3 and 4.  */
  tx_semaphore_create(&semaphore_0, "semaphore 0", 1);

  /* Create the event flags group used by threads 1 and 5.  */
  tx_event_flags_create(&event_flags_0, "event flags 0");

  /* Create the mutex used by thread 6 and 7 without priority inheritance.  */
  tx_mutex_create(&mutex_0, "mutex 0", TX_NO_INHERIT);

  /* Allocate the memory for a small block pool.  */
  tx_byte_allocate(&byte_pool_0, (VOID **)&pointer, DEMO_BLOCK_POOL_SIZE, TX_NO_WAIT);

  /* Create a block memory pool to allocate a message buffer from.  */
  tx_block_pool_create(&block_pool_0, "block pool 0", sizeof(ULONG), pointer, DEMO_BLOCK_POOL_SIZE);

  /* Allocate a block and release the block memory.  */
  tx_block_allocate(&block_pool_0, (VOID **)&pointer, TX_NO_WAIT);

  /* Release the block back to the pool.  */
  tx_block_release(pointer);
}

/* Define the test threads.  */

void thread_0_entry(ULONG thread_input)
{

  UINT status;

  /* This thread simply sits in while-forever-sleep loop.  */
  while (1)
  {

    /* Increment the thread counter.  */
    thread_0_counter++;
    /* Sleep for 10 ticks.  */
    tx_thread_sleep(1000);
    printf("thread0 running");
    HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);

    /* Set event flag 0 to wakeup thread 5.  */
    status = tx_event_flags_set(&event_flags_0, 0x1, TX_OR);

    /* Check status.  */
    if (status != TX_SUCCESS)
      break;
  }
}

void thread_1_entry(ULONG thread_input)
{

  UINT status;

  /* This thread simply sends messages to a queue shared by thread 2.  */
  while (1)
  {

    /* Increment the thread counter.  */
    thread_1_counter++;

    /* Send message to queue 0.  */
    status = tx_queue_send(&queue_0, &thread_1_messages_sent, TX_WAIT_FOREVER);

    /* Check completion status.  */
    if (status != TX_SUCCESS)
      break;

    /* Increment the message sent.  */
    thread_1_messages_sent++;
  }
}

void thread_2_entry(ULONG thread_input)
{

  ULONG received_message;
  UINT status;

  /* This thread retrieves messages placed on the queue by thread 1.  */
  while (1)
  {

    /* Increment the thread counter.  */
    thread_2_counter++;

    /* Retrieve a message from the queue.  */
    status = tx_queue_receive(&queue_0, &received_message, TX_WAIT_FOREVER);

    /* Check completion status and make sure the message is what we 
           expected.  */
    if ((status != TX_SUCCESS) || (received_message != thread_2_messages_received))
      break;

    /* Otherwise, all is okay.  Increment the received message count.  */
    thread_2_messages_received++;
  }
}

void thread_3_and_4_entry(ULONG thread_input)
{

  UINT status;

  /* This function is executed from thread 3 and thread 4.  As the loop
       below shows, these function compete for ownership of semaphore_0.  */
  while (1)
  {

    /* Increment the thread counter.  */
    if (thread_input == 3)
      thread_3_counter++;
    else
      thread_4_counter++;

    /* Get the semaphore with suspension.  */
    status = tx_semaphore_get(&semaphore_0, TX_WAIT_FOREVER);

    /* Check status.  */
    if (status != TX_SUCCESS)
      break;

    /* Sleep for 2 ticks to hold the semaphore.  */
    tx_thread_sleep(2);

    /* Release the semaphore.  */
    status = tx_semaphore_put(&semaphore_0);

    /* Check status.  */
    if (status != TX_SUCCESS)
      break;
  }
}

void thread_5_entry(ULONG thread_input)
{

  UINT status;
  ULONG actual_flags;

  /* This thread simply waits for an event in a forever loop.  */
  while (1)
  {

    /* Increment the thread counter.  */
    thread_5_counter++;

    /* Wait for event flag 0.  */
    status = tx_event_flags_get(&event_flags_0, 0x1, TX_OR_CLEAR,
                                &actual_flags, TX_WAIT_FOREVER);

    /* Check status.  */
    if ((status != TX_SUCCESS) || (actual_flags != 0x1))
      break;
  }
}

void thread_6_and_7_entry(ULONG thread_input)
{

  UINT status;

  /* This function is executed from thread 6 and thread 7.  As the loop
       below shows, these function compete for ownership of mutex_0.  */
  while (1)
  {

    /* Increment the thread counter.  */
    if (thread_input == 6)
      thread_6_counter++;
    else
      thread_7_counter++;

    /* Get the mutex with suspension.  */
    status = tx_mutex_get(&mutex_0, TX_WAIT_FOREVER);

    /* Check status.  */
    if (status != TX_SUCCESS)
      break;

    /* Get the mutex again with suspension.  This shows
           that an owning thread may retrieve the mutex it
           owns multiple times.  */
    status = tx_mutex_get(&mutex_0, TX_WAIT_FOREVER);

    /* Check status.  */
    if (status != TX_SUCCESS)
      break;

    /* Sleep for 2 ticks to hold the mutex.  */
    tx_thread_sleep(2);

    /* Release the mutex.  */
    status = tx_mutex_put(&mutex_0);

    /* Check status.  */
    if (status != TX_SUCCESS)
      break;

    /* Release the mutex again.  This will actually 
           release ownership since it was obtained twice.  */
    status = tx_mutex_put(&mutex_0);

    /* Check status.  */
    if (status != TX_SUCCESS)
      break;
  }
}

/* USER CODE END 4 */

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM2 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM2)
  {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
