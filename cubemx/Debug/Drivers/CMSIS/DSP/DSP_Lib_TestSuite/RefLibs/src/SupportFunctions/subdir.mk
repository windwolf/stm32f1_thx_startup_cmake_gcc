################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/SupportFunctions.c \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/copy.c \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fill.c \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fixed_to_fixed.c \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fixed_to_float.c \
../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/float_to_fixed.c 

OBJS += \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/SupportFunctions.o \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/copy.o \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fill.o \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fixed_to_fixed.o \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fixed_to_float.o \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/float_to_fixed.o 

C_DEPS += \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/SupportFunctions.d \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/copy.d \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fill.d \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fixed_to_fixed.d \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fixed_to_float.d \
./Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/float_to_fixed.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/SupportFunctions.o: ../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/SupportFunctions.c Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../FileX/App -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/filex/common/inc/ -I../Middlewares/ST/filex/ports/generic/inc/ -I../Middlewares/ST/threadx/common/inc/ -I../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/SupportFunctions.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/copy.o: ../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/copy.c Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../FileX/App -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/filex/common/inc/ -I../Middlewares/ST/filex/ports/generic/inc/ -I../Middlewares/ST/threadx/common/inc/ -I../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/copy.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fill.o: ../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fill.c Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../FileX/App -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/filex/common/inc/ -I../Middlewares/ST/filex/ports/generic/inc/ -I../Middlewares/ST/threadx/common/inc/ -I../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fill.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fixed_to_fixed.o: ../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fixed_to_fixed.c Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../FileX/App -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/filex/common/inc/ -I../Middlewares/ST/filex/ports/generic/inc/ -I../Middlewares/ST/threadx/common/inc/ -I../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fixed_to_fixed.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fixed_to_float.o: ../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fixed_to_float.c Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../FileX/App -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/filex/common/inc/ -I../Middlewares/ST/filex/ports/generic/inc/ -I../Middlewares/ST/threadx/common/inc/ -I../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/fixed_to_float.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/float_to_fixed.o: ../Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/float_to_fixed.c Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../FileX/App -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/filex/common/inc/ -I../Middlewares/ST/filex/ports/generic/inc/ -I../Middlewares/ST/threadx/common/inc/ -I../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/SupportFunctions/float_to_fixed.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

