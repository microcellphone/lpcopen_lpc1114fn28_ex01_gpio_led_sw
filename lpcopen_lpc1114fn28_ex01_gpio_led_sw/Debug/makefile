################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := lpcopen_lpc1114fn28_ex01_gpio_led_sw
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all:
	+@$(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: lpcopen_lpc1114fn28_ex01_gpio_led_sw.axf

# Tool invocations
lpcopen_lpc1114fn28_ex01_gpio_led_sw.axf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -L"/home/hirokatsu/ARM/Cortex-M0/LPC1114/LPC1114FN28/mcuxpresso_lpcopen_workspace/lpc_chip_11cxx_lib/Debug" -L"/home/hirokatsu/ARM/Cortex-M0/LPC1114/LPC1114FN28/mcuxpresso_lpcopen_workspace/lpcopen_lpc1114fn28_ex00_my_board_lib/Debug" -Xlinker -Map="lpcopen_lpc1114fn28_ex01_gpio_led_sw.map" -Xlinker --cref -Xlinker --gc-sections -Xlinker -print-memory-usage -mcpu=cortex-m0 -mthumb -T "lpcopen_lpc1114fn28_ex01_gpio_led_sw_Debug.ld" -o "lpcopen_lpc1114fn28_ex01_gpio_led_sw.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) lpcopen_lpc1114fn28_ex01_gpio_led_sw.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "lpcopen_lpc1114fn28_ex01_gpio_led_sw.axf"; # arm-none-eabi-objcopy -v -O binary "lpcopen_lpc1114fn28_ex01_gpio_led_sw.axf" "lpcopen_lpc1114fn28_ex01_gpio_led_sw.bin" ; # checksum -p LPC1114FN_102 -d "lpcopen_lpc1114fn28_ex01_gpio_led_sw.bin";
	-@echo ' '

.PHONY: all clean dependents post-build

-include ../makefile.targets
