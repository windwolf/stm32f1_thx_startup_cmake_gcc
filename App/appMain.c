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
  ssd1306_demo();
}
