################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c \
../Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c \
../Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c \
../Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c \
../Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c \
../Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c 

OBJS += \
./Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.o \
./Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.o \
./Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.o \
./Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.o \
./Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.o \
./Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.o 

C_DEPS += \
./Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.d \
./Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.d \
./Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.d \
./Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.d \
./Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.d \
./Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.o: ../Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c Drivers/CMSIS/NN/Source/FullyConnectedFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../FileX/App -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/filex/common/inc/ -I../Middlewares/ST/filex/ports/generic/inc/ -I../Middlewares/ST/threadx/common/inc/ -I../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.o: ../Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c Drivers/CMSIS/NN/Source/FullyConnectedFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../FileX/App -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/filex/common/inc/ -I../Middlewares/ST/filex/ports/generic/inc/ -I../Middlewares/ST/threadx/common/inc/ -I../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.o: ../Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c Drivers/CMSIS/NN/Source/FullyConnectedFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../FileX/App -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/filex/common/inc/ -I../Middlewares/ST/filex/ports/generic/inc/ -I../Middlewares/ST/threadx/common/inc/ -I../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.o: ../Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c Drivers/CMSIS/NN/Source/FullyConnectedFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../FileX/App -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/filex/common/inc/ -I../Middlewares/ST/filex/ports/generic/inc/ -I../Middlewares/ST/threadx/common/inc/ -I../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.o: ../Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c Drivers/CMSIS/NN/Source/FullyConnectedFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../FileX/App -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/filex/common/inc/ -I../Middlewares/ST/filex/ports/generic/inc/ -I../Middlewares/ST/threadx/common/inc/ -I../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.o: ../Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c Drivers/CMSIS/NN/Source/FullyConnectedFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DTX_INCLUDE_USER_DEFINE_FILE -DFX_INCLUDE_USER_DEFINE_FILE -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../FileX/App -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/filex/common/inc/ -I../Middlewares/ST/filex/ports/generic/inc/ -I../Middlewares/ST/threadx/common/inc/ -I../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

