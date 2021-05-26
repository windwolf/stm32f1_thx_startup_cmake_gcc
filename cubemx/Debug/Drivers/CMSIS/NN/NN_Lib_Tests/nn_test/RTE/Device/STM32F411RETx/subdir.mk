################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/Device/STM32F411RETx/startup_stm32f411xe.s 

C_SRCS += \
../Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/Device/STM32F411RETx/system_stm32f4xx.c 

OBJS += \
./Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/Device/STM32F411RETx/startup_stm32f411xe.o \
./Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/Device/STM32F411RETx/system_stm32f4xx.o 

S_DEPS += \
./Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/Device/STM32F411RETx/startup_stm32f411xe.d 

C_DEPS += \
./Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/Device/STM32F411RETx/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/Device/STM32F411RETx/startup_stm32f411xe.o: ../Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/Device/STM32F411RETx/startup_stm32f411xe.s Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/Device/STM32F411RETx/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/Device/STM32F411RETx/startup_stm32f411xe.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/Device/STM32F411RETx/system_stm32f4xx.o: ../Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/Device/STM32F411RETx/system_stm32f4xx.c Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/Device/STM32F411RETx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../FileX/App -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/filex/common/inc/ -I../Middlewares/ST/filex/ports/generic/inc/ -I../Middlewares/ST/threadx/common/inc/ -I../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/Device/STM32F411RETx/system_stm32f4xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

