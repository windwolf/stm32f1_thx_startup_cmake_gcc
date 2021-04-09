#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern uint32_t _lditcm;
extern uint32_t _eitcm;
extern uint32_t _sitcm;

void copy_itcm()
{
    uint32_t end = (uint32_t)(&_eitcm);
    uint32_t start = (uint32_t)(&_sitcm);
    uint32_t len = end - start;
    memcpy(&_sitcm, &_lditcm, len);
}

extern uint32_t _sidata;
extern uint32_t _sdata;
extern uint32_t _edata;

void copy_data()
{
    uint32_t len = (uint32_t)&_edata - (uint32_t)&_sdata;
    memcpy(&_sdata, &_sidata, len);
}

extern uint32_t _sbss;
extern uint32_t _ebss;

void fill_bss()
{
    uint32_t len = (uint32_t)&_ebss - (uint32_t)&_sbss;
    memset(&_sbss, 0, len);
}