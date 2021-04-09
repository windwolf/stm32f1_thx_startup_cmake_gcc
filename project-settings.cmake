# TODO: 项目名称
set(PROJECT_NAME "startup")

# TODO: 目标MCU
set(TARGET_MCU "STM32F103C8T6")

# 导入目标对应的变量或者选项. 这行不要动
include(${CMAKE_SOURCE_DIR}/cmake/target-port.cmake)


set(ELF_TARGET ${PROJECT_NAME}.elf)

option(USE_LL_LIB "Enable LL library" ON)
option(USE_HAL_LIB "Enable HAL library" ON)

option(USE_SYSTEM_VIEW "Enable Segger SystemView library" OFF)


set(DRIVERS_BSP "STM32F103")


# cubemx没有集成threadx的情况下, 需要额外包含以下文件
string(REPLACE "-" "_" THREADX_ARCH ${CPU})
message(STATUS "THREADX_ARCH=${THREADX_ARCH}")
set(THREADX_TOOLCHAIN "gnu")
message(STATUS "THREADX_TOOLCHAIN=${THREADX_TOOLCHAIN}")
set(TX_USER_FILE ${CMAKE_CURRENT_SOURCE_DIR}/Src/applications/inc/tx_user.h)
add_project_library(threadx azrtos::threadx)

# TODO: 内部组件
add_project_component(common)
# add_project_component(uart_print)
add_project_component(rtt_print)
