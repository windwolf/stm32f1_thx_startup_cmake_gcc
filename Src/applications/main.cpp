#include "main.h"
#include "usart.h"
#include "gpio.h"

#include "tx_api.h"
#include "common/tracex.h"
#include "utils.h"
#include "demo.h"
#include "common/gpio.hpp"
#include "common/ring_buffer.hpp"
#include "common/device.hpp"
#include "common/driver.hpp"

using namespace Windwolf::Common;
using namespace Windwolf::Drivers;

extern "C" void
SystemClock_Config(void);
uint8_t bufdata[1];

int main(void) {

    HAL_Init();
    SystemClock_Config();

    MX_GPIO_Init();
    MX_USART1_UART_Init();

    LOG("begin trace\n")
    TraceX_EnableTrace();

    LOG("begin kernel\n")
    tx_kernel_enter();

    while (1) {
        // UartDeviceDriver uartDvr(&huart1);
        // UartDevice uart(&uartDvr);
        // WaitHandle wh;
        // uint8_t buf[100];
        // RingBuffer<uint8_t> rb(buf, 100);
        // uart.StartWrite(rb.GetHeadPointer(), rb., &wh);
        // wh.Wait();

        // uart.StartRead(buf, 100, &wh);
        // wh.Wait();

        Windwolf::Drivers::StreamDriver sdrv(nullptr, nullptr);

        RingBuffer<uint8_t> buf(bufdata, 1);
        if (buf.IsEmpty()) {
            buf.Enqueue(bufdata, 1, true);
        }
    }
}
