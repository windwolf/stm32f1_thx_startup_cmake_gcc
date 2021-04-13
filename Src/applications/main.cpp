#include "main.h"
#include "usart.h"
#include "gpio.h"

#include "tx_api.h"
#include "common/tracex.h"
#include "utils.h"
#include "demo.h"
#include "gpio.hpp"
#include "ring_buffer.hpp"

using namespace Windwolf::Common;

extern "C" void SystemClock_Config(void);
uint8_t bufdata[1];


int main(void)
{
  
  RingBuffer<uint8_t> buf(bufdata, 1);
  if (buf.IsEmpty()) {
    buf.Enqueue(bufdata, 1, true);
  }
  HAL_Init();
  SystemClock_Config();

  MX_GPIO_Init();
  MX_USART1_UART_Init();

  LOG("begin trace\n")
  TraceX_EnableTrace();

  LOG("begin kernel\n")
  tx_kernel_enter();

  while (1)
  {
  }
}
