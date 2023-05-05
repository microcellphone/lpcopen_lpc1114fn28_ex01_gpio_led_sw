################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/cr_startup_lpc11xx.c \
../src/crp.c \
../src/lpcopen_lpc1114fn28_ex01_gpio_led_sw.c \
../src/sysinit.c 

OBJS += \
./src/cr_startup_lpc11xx.o \
./src/crp.o \
./src/lpcopen_lpc1114fn28_ex01_gpio_led_sw.o \
./src/sysinit.o 

C_DEPS += \
./src/cr_startup_lpc11xx.d \
./src/crp.d \
./src/lpcopen_lpc1114fn28_ex01_gpio_led_sw.d \
./src/sysinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DDEBUG -D__CODE_RED -DCORE_M0 -D__USE_LPCOPEN -DNO_BOARD_LIB -D__LPC11XX__ -D__REDLIB__ -I"/home/hirokatsu/ARM/Cortex-M0/LPC1114/LPC1114FN28/mcuxpresso_lpcopen_workspace/lpc_chip_11cxx_lib/inc" -I"/home/hirokatsu/ARM/Cortex-M0/LPC1114/LPC1114FN28/mcuxpresso_lpcopen_workspace/lpcopen_lpc1114fn28_ex00_my_board_lib/src/device" -I"/home/hirokatsu/ARM/Cortex-M0/LPC1114/LPC1114FN28/mcuxpresso_lpcopen_workspace/lpcopen_lpc1114fn28_ex00_my_board_lib/src/driver" -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0 -mthumb -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


