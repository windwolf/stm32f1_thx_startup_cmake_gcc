#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "stm32h7xx_hal.h"

extern uint32_t _lditcm;
extern uint32_t _eitcm;
extern uint32_t _sitcm;

void copy_itcm()
{
    uint32_t end = (uint32_t)(&_eitcm);
    uint32_t start = (uint32_t)(&_sitcm);
    uint32_t len = end - start;
    memcpy(&_sitcm, &_lditcm, len);

    SCB->VTOR = D1_ITCMRAM_BASE;
}

extern uint32_t _sidata;
extern uint32_t _sdata;
extern uint32_t _edata;

extern uint32_t _sid1;
extern uint32_t _sd1;
extern uint32_t _ed1;

extern uint32_t _sid2;
extern uint32_t _sd2;
extern uint32_t _ed2;

extern uint32_t _sid3;
extern uint32_t _sd3;
extern uint32_t _ed3;

void copy_data()
{
    uint32_t len = (uint32_t)&_edata - (uint32_t)&_sdata;
    memcpy(&_sdata, &_sidata, len);

    len = (uint32_t)&_ed1 - (uint32_t)&_sd1;
    memcpy(&_sd1, &_sid1, len);

    len = (uint32_t)&_ed2 - (uint32_t)&_sd2;
    memcpy(&_sd2, &_sid2, len);

    len = (uint32_t)&_ed3 - (uint32_t)&_sd3;
    memcpy(&_sd3, &_sid3, len);
}

extern uint32_t _sbss;
extern uint32_t _ebss;

void fill_bss()
{
    uint32_t len = (uint32_t)&_ebss - (uint32_t)&_sbss;
    memset(&_sbss, 0, len);
}