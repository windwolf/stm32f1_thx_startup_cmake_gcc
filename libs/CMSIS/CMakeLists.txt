# Add libraries
add_library(CMSIS INTERFACE)
target_compile_definitions(CMSIS 
    INTERFACE
        -D${MCU_LINE}
)
target_include_directories(CMSIS 
    INTERFACE
        ${CMAKE_CURRENT_SOURCE_DIR}/Include
        ${CMAKE_CURRENT_SOURCE_DIR}/Device/ST/${MCU_SERIES}/Include
)
