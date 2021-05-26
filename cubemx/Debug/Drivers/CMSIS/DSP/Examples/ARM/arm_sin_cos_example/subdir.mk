################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/arm_sin_cos_example_f32.c 

OBJS += \
./Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/arm_sin_cos_example_f32.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/arm_sin_cos_example_f32.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/arm_sin_cos_example_f32.o: ../Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/arm_sin_cos_example_f32.c Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../FileX/App -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/filex/common/inc/ -I../Middlewares/ST/filex/ports/generic/inc/ -I../Middlewares/ST/threadx/common/inc/ -I../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/arm_sin_cos_example_f32.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

