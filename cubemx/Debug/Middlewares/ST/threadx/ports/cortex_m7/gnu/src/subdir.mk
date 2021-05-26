################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_context_restore.S \
../Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_context_save.S \
../Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_interrupt_control.S \
../Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_schedule.S \
../Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_stack_build.S \
../Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_system_return.S \
../Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_timer_interrupt.S 

OBJS += \
./Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_context_restore.o \
./Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_context_save.o \
./Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_interrupt_control.o \
./Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_schedule.o \
./Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_stack_build.o \
./Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_system_return.o \
./Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_timer_interrupt.o 

S_UPPER_DEPS += \
./Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_context_restore.d \
./Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_context_save.d \
./Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_interrupt_control.d \
./Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_schedule.d \
./Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_stack_build.d \
./Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_system_return.d \
./Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_timer_interrupt.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_context_restore.o: ../Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_context_restore.S Middlewares/ST/threadx/ports/cortex_m7/gnu/src/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_context_restore.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_context_save.o: ../Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_context_save.S Middlewares/ST/threadx/ports/cortex_m7/gnu/src/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_context_save.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_interrupt_control.o: ../Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_interrupt_control.S Middlewares/ST/threadx/ports/cortex_m7/gnu/src/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_interrupt_control.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_schedule.o: ../Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_schedule.S Middlewares/ST/threadx/ports/cortex_m7/gnu/src/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_schedule.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_stack_build.o: ../Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_stack_build.S Middlewares/ST/threadx/ports/cortex_m7/gnu/src/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_stack_build.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_system_return.o: ../Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_system_return.S Middlewares/ST/threadx/ports/cortex_m7/gnu/src/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_thread_system_return.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_timer_interrupt.o: ../Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_timer_interrupt.S Middlewares/ST/threadx/ports/cortex_m7/gnu/src/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Middlewares/ST/threadx/ports/cortex_m7/gnu/src/tx_timer_interrupt.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

