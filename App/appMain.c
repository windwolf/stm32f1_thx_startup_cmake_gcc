#include "main.h"
#include "dma.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"
#include "spi.h"

#include "ssd1306_demo.h"

extern void SystemClock_Config(void);

void appMain(void)
{
#ifdef USE_RTT_PRINT
#include "rtt/SEGGER_RTT.h"
  SEGGER_RTT_Init();
#endif
  ssd1306_demo();
}
