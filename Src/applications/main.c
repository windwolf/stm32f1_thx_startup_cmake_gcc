#include "main.h"

#include "tx_api.h"
#include "common/tracex.h"
#include "utils.h"
#include "demo.h"
#include "mem_layout.h"
#include "stm32h7xx_ll_usart.h"
#include "stm32h7xx_hal_uart.h"
#include "stm32h7xx_hal_uart_ex.h"
//#include "basic/ring_buffer.h"
#include "basic/ring_buffer8.h"
#include "basic/uart.h"
// #include "common/gpio.hpp"
// #include "common/ring_buffer.hpp"
// #include "common/device.hpp"
// #include "common/stream_driver.hpp"
// #include "bsp/uart_device.hpp"

// using namespace windwolf::common;
// using namespace windwolf::drivers;
// using namespace windwolf::drivers::Bsp;

UartDevice uart;
extern UART_HandleTypeDef huart4;
DMA1_BUFFER uint8_t txBuf0[64];
// DMA1_BUFFER uint16_t txBuf0Count = 0;
// DMA1_BUFFER uint8_t tx0Ready = 0;
// DMA1_BUFFER uint8_t txBuf1[64];
// DMA1_BUFFER uint16_t txBuf1Count = 0;
// DMA1_BUFFER uint8_t tx1Ready = 0;
DMA1_BUFFER uint8_t testRxBuf[65];
// DMA1_BUFFER uint16_t _lastRxPos = 0;
// DMA1_BUFFER uint8_t txWriteIndex = 0;
// DMA1_BUFFER uint8_t txReadIndex = 0;
// DMA1_BUFFER uint8_t txReady = 0;
// DMA1_BUFFER RingBuffer buffer;
DMA1_BUFFER RingBuffer8 buffer2;

int32_t cWrite = 0;
int32_t cRead = 0;
const char *text = "test wolf!";

static inline void Uart_RxEventCpltCallback__(UART_HandleTypeDef *_handle, uint16_t pos)
{
    //RingBuffer_SyncWriteIndex(&buffer, pos);
    RingBuffer8_SyncWrite(&buffer2, pos);
    cWrite++;
    // if (pos > _lastRxPos)
    // {
    //     if (txWriteIndex == 0)
    //     {
    //         memcpy(txBuf0, _handle->pRxBuffPtr + _lastRxPos, pos - _lastRxPos);
    //         txBuf0Count = pos - _lastRxPos;
    //         tx0Ready = 1;
    //         txWriteIndex = 1;
    //     }
    //     else
    //     {
    //         memcpy(txBuf1, _handle->pRxBuffPtr + _lastRxPos, pos - _lastRxPos);
    //         txBuf1Count = pos - _lastRxPos;
    //         tx1Ready = 1;
    //         txWriteIndex = 0;
    //     }
    // }
    // else if (pos < _lastRxPos)
    // {
    //     if (txWriteIndex == 0)
    //     {
    //         memcpy(txBuf0, _handle->pRxBuffPtr + _lastRxPos, _handle->RxXferSize - _lastRxPos);
    //         memcpy(txBuf0 + _handle->RxXferSize - _lastRxPos, _handle->pRxBuffPtr, pos);
    //         txBuf0Count = _handle->RxXferSize - _lastRxPos + pos;
    //         txWriteIndex = 1;
    //     }
    //     else
    //     {
    //         memcpy(txBuf1, _handle->pRxBuffPtr + _lastRxPos, _handle->RxXferSize - _lastRxPos);
    //         memcpy(txBuf1 + _handle->RxXferSize - _lastRxPos, _handle->pRxBuffPtr, pos);
    //         txBuf1Count = _handle->RxXferSize - _lastRxPos + pos;
    //         txWriteIndex = 0;
    //     }
    // }
    // else
    // {
    //     // _lastRxPos == pos. Because half and full buffer pos will gen rx event, so lastrxpos equals pos when
    //     // and only no validate data received.
    // }
    // _lastRxPos = (pos == _handle->RxXferSize) ? 0 : pos;
}

int main(void)
{

    MX_All_Init();

    LOG("begin trace\n")
    TraceX_EnableTrace();

    RingBuffer8_Create(&buffer2, testRxBuf, 65);
    UartDevice_Init(&uart, &huart4, &buffer2);
    UartDevice_StartServer(&uart);

    LOG("begin kernel\n")
    tx_kernel_enter();

    //     HAL_StatusTypeDef rst;
    // HAL_UART_RegisterRxEventCallback(&huart4, Uart_RxEventCpltCallback__);
    // UartDevice_Tx(&uart, text, strlen(text));
    // UartDevice_WaitForTxComplete(&uart, TX_WAIT_FOREVER);
    //rst = HAL_UART_Transmit(&huart4, text, strlen(text), 10000);
    //rst = HAL_UART_Transmit_DMA(&huart4, text, strlen(text));
    //LL_USART_EnableIT_IDLE(huart4.Instance);
    // rst = HAL_UARTEx_ReceiveToIdle_DMA(&huart4, testRxBuf, 65);
    // if (rst)
    // {
    // }
    while (1)
    {

        // uint32_t len = RingBuffer8_GetCount(&buffer2);
        // if (len > 0)
        // {
        //     RingBuffer8_Read(&buffer2, txBuf0, len);
        //     rst = HAL_UART_Transmit_DMA(&huart4, txBuf0, len);
        //     HAL_Delay(10);
        //     cRead++;
        // }

        // uint32_t len = RingBuffer_GetMemoryLength(&buffer);
        // if (len > 0)
        // {
        //     RingBuffer_Read(&buffer, txBuf0, len);
        //     rst = HAL_UART_Transmit_DMA(&huart4, txBuf0, len);
        // }
        // if (txReadIndex == 0)
        // {
        //     if (tx0Ready)
        //     {
        //         rst = HAL_UART_Transmit_DMA(&huart4, txBuf0, txBuf0Count);
        //         tx0Ready = 0;
        //         txReadIndex = 1;
        //     }
        // }
        // else if (txReadIndex == 1)
        // {
        //     if (tx1Ready)
        //     {
        //         rst = HAL_UART_Transmit_DMA(&huart4, txBuf1, txBuf1Count);
        //         tx1Ready = 0;
        //         txReadIndex = 0;
        //     }
        // }
    }
}
