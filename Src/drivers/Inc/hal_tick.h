#ifndef __hal_tick_h__
#define __hal_tick_h__
#ifdef __cplusplus
extern "C"
{
#endif

#include "stm32f1xx_hal.h"
#include "tx_api.h"

    static TX_TIMER halTick_timer;

    static void IncTick_Timer(ULONG id)
    {
        HAL_IncTick();
    }

    void Create_HalTick_Timer()
    {
        tx_timer_create(&halTick_timer, "hal tick", IncTick_Timer, 0, 0, 1, TX_TRUE);
    }

#ifdef __cplusplus
}
#endif
#endif // __hal_tick_h__