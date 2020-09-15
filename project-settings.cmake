# TODO: 项目名称
set(PROJECT_NAME "startup")

# 目标MCU
set(TARGET_MCU "STM32F103C8")


set(LINKER_SCRIPT ${CMAKE_CURRENT_SOURCE_DIR}/Src/STM32F103C8Tx_FLASH.ld)

option(USE_LL_LIB "Enable LL library" ON)
option(USE_HAL_LIB "Enable HAL library" ON)


option(USE_SYSTEM_VIEW "Enable Segger SystemView library" OFF)


# hal
set(STM32_HAL_USER_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/Src/drivers/inc)

# threadx
set(THREADX_ARCH "cortex_m3")
set(THREADX_TOOLCHAIN "gnu")
set(TX_USER_FILE ${CMAKE_CURRENT_SOURCE_DIR}/Src/drivers/inc/tx_user.h)