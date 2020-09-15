
# If the user provided an override, copy it to the custom directory
if (NOT STM32_HAL_USER_INCLUDE_DIR)
    message(FATAL_ERROR "Error: 请在project-settings.cmake中指定 STM32_HAL_USER_INCLUDE_DIR. 这个目录必须包含stm32_assert.h和stm32XXXX_hal_conf.h")
endif()




file(GLOB_RECURSE HAL_DRIVER_HAL_SRC ${CMAKE_CURRENT_SOURCE_DIR}/${MCU_SERIES}_HAL_Driver/Src/*_hal.c ${CMAKE_CURRENT_SOURCE_DIR}/${MCU_SERIES}_HAL_Driver/Src/*_hal_*.c)
list(FILTER HAL_DRIVER_HAL_SRC EXCLUDE REGEX "(_template.c)$")

file(GLOB_RECURSE HAL_DRIVER_LL_SRC ${CMAKE_CURRENT_SOURCE_DIR}/${MCU_SERIES}_HAL_Driver/Src/*_ll_*.c)
list(FILTER HAL_DRIVER_LL_SRC EXCLUDE REGEX "(_template.c)$")

if(USE_HAL_LIB)
    set(HAL_DRIVER_LIB_SRC ${HAL_DRIVER_HAL_SRC} ${HAL_DRIVER_LL_SRC})
else()
    set(HAL_DRIVER_LIB_SRC ${HAL_DRIVER_LL_SRC})
endif()

add_library(HAL_Driver ${HAL_DRIVER_LIB_SRC})
if(USE_LL_LIB)
    target_compile_definitions(HAL_Driver
        PUBLIC -DUSE_FULL_LL_DRIVER)
endif()
if(USE_HAL_LIB)
    target_compile_definitions(HAL_Driver
        PUBLIC -DUSE_HAL_DRIVER)
endif()
target_link_libraries(HAL_Driver
    PUBLIC
        CMSIS)
target_include_directories(HAL_Driver
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/${MCU_SERIES}_HAL_Driver/Inc
        ${STM32_HAL_USER_INCLUDE_DIR}
    PRIVATE
        Src)
