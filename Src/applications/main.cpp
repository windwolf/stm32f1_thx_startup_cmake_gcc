#include "main.h"

#include "tx_api.h"
#include "common/tracex.h"
#include "utils.h"
#include "demo.h"
#include "common/gpio.hpp"
#include "common/ring_buffer.hpp"
#include "common/device.hpp"
#include "common/driver.hpp"
#include "bsp/uart_device.hpp"
#include "os_port.hpp"

using namespace Windwolf::Common;
using namespace Windwolf::Drivers;
using namespace Windwolf::Drivers::Bsp;
using namespace Windwolf::Drivers::OsPort;


uint8_t bufdata[1];


extern "C" int main(void) {


    MX_All_Init();

    LOG("begin trace\n")
    TraceX_EnableTrace();

    LOG("begin kernel\n")
    tx_kernel_enter();

    while (1) {
        STM32H7xxUartDeviceHandle uartHandle;

        STM32H7xxUartDevice uartDevice(&uartHandle);
        STM32H7xxUartDeviceHandle_Init(&uartHandle, &uartDevice);

        ThreadxOsSync txsync(nullptr, 0);
        WaitHandle txwh(txsync);
        uartDevice.TxAsync(bufdata, 1, &txwh);

        // STM32UartDevice uart();
        // IoDeviceHandle dh = uart.GetDeviceHandle();
        // StreamDriver stream(dh);  //dh.registerWaitHandle(tx, rx);
        // stream.write(xxx);
        // stream.read(xxx);
        // UartDevice uart(&uartDvr);
        // WaitHandle wh;
        // uint8_t buf[100];
        // RingBuffer<uint8_t> rb(buf, 100);
        // uart.StartWrite(rb.GetHeadPointer(), rb., &wh);
        // wh.Wait();

        // uart.StartRead(buf, 100, &wh);
        // wh.Wait();

        // Windwolf::Drivers::StreamDriver sdrv(nullptr, nullptr);

        RingBuffer<uint8_t> buf(bufdata, 1);
        if (buf.IsEmpty()) {
            buf.Enqueue(bufdata, 1, true);
        }
    }
}
