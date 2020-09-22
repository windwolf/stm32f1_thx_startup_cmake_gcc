#ifndef __log_h__
#define __log_h__

#include "stdio.h"

#ifdef __cplusplus
extern "C"
{
#endif

#define LOG(fmt, ...) \
    printf(fmt, ##__VA_ARGS__);

#ifdef __cplusplus
}
#endif
#endif // __log_h__
