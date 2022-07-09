cmake_minimum_required(VERSION 3.17.0)

if(NOT DEFINED OS_PORT)
    message(FATAL_ERROR "Error: OS_PORT not defined")
else()
    message(STATUS "OS_PORT: ${OS_PORT}")
endif()

if(${OS_PORT} STREQUAL "freertos")
    message(STATUS "OS_PORT: loading FreeRTOS")
    file(GLOB __FREERTOS_SOURCE_PATHS
        ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/Third_Party/FreeRTOS/Source/*.c
        ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/Third_Party/FreeRTOS/Source/*.S
    )
    target_sources(${PROJECT_NAME}
        PRIVATE
        ${__FREERTOS_SOURCE_PATHS}
    )
    file(GLOB_RECURSE __FREERTOS_SOURCE_PATHS
        ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/*.c
    )
    target_sources(${PROJECT_NAME}
        PRIVATE
        ${__FREERTOS_SOURCE_PATHS}
    )

    if(NOT DEFINED OS_PORT_FREERTOS_MEM_MANG)
        message(FATAL_ERROR "Error: OS_PORT_FREERTOS_MEM_MANG not defined")
    else()
        message(STATUS "OS_PORT_FREERTOS_MEM_MANG: ${OS_PORT_FREERTOS_MEM_MANG}")
    endif()

    if(${OS_PORT_FREERTOS_MEM_MANG} STREQUAL "heap1")
        target_sources(${PROJECT_NAME}
            PRIVATE
            ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_1.c
        )
    elseif(${OS_PORT_FREERTOS_MEM_MANG} STREQUAL "heap2")
        target_sources(${PROJECT_NAME}
            PRIVATE
            ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_2.c
        )
    elseif(${OS_PORT_FREERTOS_MEM_MANG} STREQUAL "heap3")
        target_sources(${PROJECT_NAME}
            PRIVATE
            ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_3.c
        )
    elseif(${OS_PORT_FREERTOS_MEM_MANG} STREQUAL "heap4")
        target_sources(${PROJECT_NAME}
            PRIVATE
            ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c
        )
    elseif(${OS_PORT_FREERTOS_MEM_MANG} STREQUAL "heap5")
        target_sources(${PROJECT_NAME}
            PRIVATE
            ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_5.c
        )
    endif()

    file(GLOB __FREERTOS_SOURCE_PATHS
        ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/*.c
    )
    target_sources(${PROJECT_NAME}
        PRIVATE
        ${__FREERTOS_SOURCE_PATHS}
    )

    target_include_directories(${PROJECT_NAME}
        PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/Third_Party/FreeRTOS/Source/include
        ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2
        ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3
        ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4
        ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7
        ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM33
    )

elseif(${OS_PORT} STREQUAL "threadx" OR ${OS_PORT} STREQUAL "azureRTOS")
endif()

# cubemx集成threadx
# file(GLOB_RECURSE CUBEMX_MW_SOURCES_PATH
# ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/ST/threadx/*.c
# ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/ST/threadx/*.S
# )
# list(APPEND PROJECT_SOURCES_PATH ${CUBEMX_MW_SOURCES_PATH})

# list(APPEND PROJECT_INCLUDES_PATH
# ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/ST/threadx/common/inc
# ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/ST/threadx/ports/cortex_m7/gnu/inc
# )

# target_compile_definitions(${ELF_TARGET}
# PUBLIC -DTX_INCLUDE_USER_DEFINE_FILE)

# cubemx集成filex
# file(GLOB_RECURSE CUBEMX_MW_SOURCES_PATH
# ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/ST/filex/*.c
# )
# list(APPEND PROJECT_SOURCES_PATH ${CUBEMX_MW_SOURCES_PATH})

# list(APPEND PROJECT_INCLUDES_PATH
# ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/ST/filex/common/inc
# ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/Middlewares/ST/filex/ports/generic/inc
# ${CMAKE_CURRENT_SOURCE_DIR}/cubemx/FileX/App
# )

# target_compile_definitions(${ELF_TARGET}
# PUBLIC -DFX_INCLUDE_USER_DEFINE_FILE)