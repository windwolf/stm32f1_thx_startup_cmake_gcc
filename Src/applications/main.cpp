#include "main.h"
#include "usart.h"
#include "gpio.h"

#include "tx_api.h"
#include "common/tracex.h"
#include "utils.h"
#include "demo.h"

extern "C" void SystemClock_Config(void);

class A
{
public:
  A(){
      LOG("A::A\n") };
  void log(){
      LOG("A::log\n") };
};

int main(void)
{
  A a;
  a.log();
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
