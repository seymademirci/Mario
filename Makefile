# This file was automagically generated by mbed.org. For more information, 
# see http://mbed.org/handbook/Exporting-to-GCC-ARM-Embedded

###############################################################################
# Boiler-plate

# cross-platform directory manipulation
ifeq ($(shell echo $$OS),$$OS)
    MAKEDIR = if not exist "$(1)" mkdir "$(1)"
    RM = rmdir /S /Q "$(1)"
else
    MAKEDIR = '$(SHELL)' -c "mkdir -p \"$(1)\""
    RM = '$(SHELL)' -c "rm -rf \"$(1)\""
endif

OBJDIR := BUILD
# Move to the build directory
ifeq (,$(filter $(OBJDIR),$(notdir $(CURDIR))))
.SUFFIXES:
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKETARGET = '$(MAKE)' --no-print-directory -C $(OBJDIR) -f '$(mkfile_path)' \
		'SRCDIR=$(CURDIR)' $(MAKECMDGOALS)
.PHONY: $(OBJDIR) clean
all:
	+@$(call MAKEDIR,$(OBJDIR))
	+@$(MAKETARGET)
$(OBJDIR): all
Makefile : ;
% :: $(OBJDIR) ; :
clean :
	$(call RM,$(OBJDIR))

else

# trick rules into thinking we are in the root, when we are in the bulid dir
VPATH = ..

# Boiler-plate
###############################################################################
# Project settings

PROJECT := Project2


# Project settings
###############################################################################
# Objects and Paths

OBJECTS += HCSR04/hcsr04.o
OBJECTS += Keypad/Keypad.o
OBJECTS += TextLCD/TextLCD.o
OBJECTS += main.o
OBJECTS += sMotor/sMotor.o

 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/PeripheralPins.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/analogin_api.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/analogout_api.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/cmain.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/except.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/gpio_api.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/gpio_irq_api.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/i2c_api.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/mbed_board.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/mbed_fault_handler.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/mbed_overrides.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/mbed_retarget.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/mbed_sdk_boot.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/mbed_tz_context.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/pinmap.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/port_api.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/pwmout_api.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/rtc_api.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/serial_api.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/sleep.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/spi_api.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/startup_MKL25Z4.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/system_MKL25Z4.o
 SYS_OBJECTS += mbed/TARGET_KL25Z/TOOLCHAIN_IAR/us_ticker.o

INCLUDE_PATHS += -I../
INCLUDE_PATHS += -I../.
INCLUDE_PATHS += -I..//usr/src/mbed-sdk
INCLUDE_PATHS += -I../HCSR04
INCLUDE_PATHS += -I../Keypad
INCLUDE_PATHS += -I../TextLCD
INCLUDE_PATHS += -I../mbed
INCLUDE_PATHS += -I../mbed/TARGET_KL25Z/TOOLCHAIN_IAR
INCLUDE_PATHS += -I../mbed/drivers
INCLUDE_PATHS += -I../mbed/hal
INCLUDE_PATHS += -I../mbed/platform
INCLUDE_PATHS += -I../sMotor

LIBRARY_PATHS := -L../mbed/TARGET_KL25Z/TOOLCHAIN_IAR 
LIBRARIES := -lmbed 
LINKER_SCRIPT ?= ../mbed/TARGET_KL25Z/TOOLCHAIN_IAR/MKL25Z4.icf

# Objects and Paths
###############################################################################
# Tools and Flags

AS      = iasmarm
CC      = iccarm
CPP     = iccarm
LD      = ilinkarm
ELF2BIN = ielftool



C_FLAGS += --vla
C_FLAGS += --diag_suppress=Pe546
C_FLAGS += --preinclude=mbed_config.h
C_FLAGS += -DDEVICE_SLEEP=1
C_FLAGS += -D__CORTEX_M0PLUS
C_FLAGS += -DTARGET_NAME=KL25Z
C_FLAGS += -DTARGET_RELEASE
C_FLAGS += -DDEVICE_SERIAL=1
C_FLAGS += -DTARGET_KLXX
C_FLAGS += -DTARGET_FF_ARDUINO
C_FLAGS += -DMBED_BUILD_TIMESTAMP=1631627834.7643018
C_FLAGS += -DTARGET_KL25Z
C_FLAGS += -DDEVICE_SEMIHOST=1
C_FLAGS += -DTARGET_CORTEX
C_FLAGS += -D__CMSIS_RTOS
C_FLAGS += -DDEVICE_ANALOGOUT=1
C_FLAGS += -DTARGET_LIKE_MBED
C_FLAGS += -DDEVICE_PORTIN=1
C_FLAGS += -DARM_MATH_CM0PLUS
C_FLAGS += -DTARGET_Freescale
C_FLAGS += -DDEVICE_PWMOUT=1
C_FLAGS += -DDEVICE_ANALOGIN=1
C_FLAGS += -DDEVICE_STDIO_MESSAGES=1
C_FLAGS += -DDEVICE_PORTOUT=1
C_FLAGS += -DTARGET_M0P
C_FLAGS += -DDEVICE_SPISLAVE=1
C_FLAGS += -DDEVICE_PORTINOUT=1
C_FLAGS += -DTARGET_LIKE_CORTEX_M0
C_FLAGS += -DTARGET_CORTEX_M
C_FLAGS += -D__MBED_CMSIS_RTOS_CM
C_FLAGS += -DDEVICE_SPI=1
C_FLAGS += -DDEVICE_USTICKER=1
C_FLAGS += -DDEVICE_I2C=1
C_FLAGS += -DDEVICE_I2CSLAVE=1
C_FLAGS += -D__MBED__=1
C_FLAGS += -DDEVICE_INTERRUPTIN=1
C_FLAGS += -DTOOLCHAIN_IAR
C_FLAGS += --preinclude=mbed_config.h
C_FLAGS += --no_wrap_diagnostics
C_FLAGS += -e
C_FLAGS += --diag_suppress=Pa050,Pa084,Pa093,Pa082,Pe540
C_FLAGS += -Ohz
C_FLAGS += --enable_restrict
C_FLAGS += -DMBED_TRAP_ERRORS_ENABLED=1
C_FLAGS += -DMBED_MINIMAL_PRINTF
C_FLAGS += --cpu
C_FLAGS += Cortex-M0+
C_FLAGS += --thumb
C_FLAGS += --dlib_config
C_FLAGS += DLib_Config_Full.h
C_FLAGS += --vla
C_FLAGS += --diag_suppress=Pe546
C_FLAGS += -DMBED_ROM_START=0x0
C_FLAGS += -DMBED_ROM_SIZE=0x20000
C_FLAGS += -DMBED_RAM_START=0x1ffff000
C_FLAGS += -DMBED_RAM_SIZE=0x4000

CXX_FLAGS += --guard_calls
CXX_FLAGS += --no_static_destruction
CXX_FLAGS += --preinclude=mbed_config.h
CXX_FLAGS += -DDEVICE_SLEEP=1
CXX_FLAGS += -D__CORTEX_M0PLUS
CXX_FLAGS += -DTARGET_NAME=KL25Z
CXX_FLAGS += -DTARGET_RELEASE
CXX_FLAGS += -DDEVICE_SERIAL=1
CXX_FLAGS += -DTARGET_KLXX
CXX_FLAGS += -DTARGET_FF_ARDUINO
CXX_FLAGS += -DMBED_BUILD_TIMESTAMP=1631627834.7643018
CXX_FLAGS += -DTARGET_KL25Z
CXX_FLAGS += -DDEVICE_SEMIHOST=1
CXX_FLAGS += -DTARGET_CORTEX
CXX_FLAGS += -D__CMSIS_RTOS
CXX_FLAGS += -DDEVICE_ANALOGOUT=1
CXX_FLAGS += -DTARGET_LIKE_MBED
CXX_FLAGS += -DDEVICE_PORTIN=1
CXX_FLAGS += -DARM_MATH_CM0PLUS
CXX_FLAGS += -DTARGET_Freescale
CXX_FLAGS += -DDEVICE_PWMOUT=1
CXX_FLAGS += -DDEVICE_ANALOGIN=1
CXX_FLAGS += -DDEVICE_STDIO_MESSAGES=1
CXX_FLAGS += -DDEVICE_PORTOUT=1
CXX_FLAGS += -DTARGET_M0P
CXX_FLAGS += -DDEVICE_SPISLAVE=1
CXX_FLAGS += -DDEVICE_PORTINOUT=1
CXX_FLAGS += -DTARGET_LIKE_CORTEX_M0
CXX_FLAGS += -DTARGET_CORTEX_M
CXX_FLAGS += -D__MBED_CMSIS_RTOS_CM
CXX_FLAGS += -DDEVICE_SPI=1
CXX_FLAGS += -DDEVICE_USTICKER=1
CXX_FLAGS += -DDEVICE_I2C=1
CXX_FLAGS += -DDEVICE_I2CSLAVE=1
CXX_FLAGS += -D__MBED__=1
CXX_FLAGS += -DDEVICE_INTERRUPTIN=1
CXX_FLAGS += -DTOOLCHAIN_IAR
CXX_FLAGS += --preinclude=mbed_config.h
CXX_FLAGS += --no_wrap_diagnostics
CXX_FLAGS += -e
CXX_FLAGS += --diag_suppress=Pa050,Pa084,Pa093,Pa082,Pe540
CXX_FLAGS += -Ohz
CXX_FLAGS += --enable_restrict
CXX_FLAGS += -DMBED_TRAP_ERRORS_ENABLED=1
CXX_FLAGS += -DMBED_MINIMAL_PRINTF
CXX_FLAGS += --cpu
CXX_FLAGS += Cortex-M0+
CXX_FLAGS += --thumb
CXX_FLAGS += --dlib_config
CXX_FLAGS += DLib_Config_Full.h
CXX_FLAGS += --c++
CXX_FLAGS += --no_rtti
CXX_FLAGS += --no_exceptions
CXX_FLAGS += --guard_calls
CXX_FLAGS += --no_static_destruction
CXX_FLAGS += -DMBED_ROM_START=0x0
CXX_FLAGS += -DMBED_ROM_SIZE=0x20000
CXX_FLAGS += -DMBED_RAM_START=0x1ffff000
CXX_FLAGS += -DMBED_RAM_SIZE=0x4000

ASM_FLAGS += -D__MBED_CMSIS_RTOS_CM
ASM_FLAGS += -DARM_MATH_CM0PLUS
ASM_FLAGS += -D__CMSIS_RTOS
ASM_FLAGS += -D__CORTEX_M0PLUS
ASM_FLAGS += "-DMBED_CONF_TARGET_CONSOLE_UART=1"
ASM_FLAGS += "-DMBED_CONF_TARGET_DEEP_SLEEP_LATENCY=0"
ASM_FLAGS += "-DMBED_CONF_TARGET_BOOT_STACK_SIZE=0x1000"
ASM_FLAGS += "-DMBED_CONF_TARGET_MPU_ROM_END=0x0fffffff"
ASM_FLAGS += "-DMBED_CONF_TARGET_TICKLESS_FROM_US_TICKER=0"
ASM_FLAGS += "-DMBED_CONF_TARGET_INIT_US_TICKER_AT_BOOT=0"
ASM_FLAGS += "-DMBED_CONF_TARGET_XIP_ENABLE=0"
ASM_FLAGS += "-DMBED_CONF_TARGET_DEFAULT_ADC_VREF=NAN"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_STDIO_CONVERT_NEWLINES=0"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_STDIO_CONVERT_TTY_NEWLINES=0"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_STDIO_BUFFERED_SERIAL=0"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_STDIO_BAUD_RATE=9600"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_STDIO_FLUSH_AT_EXIT=1"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_DEFAULT_SERIAL_BAUD_RATE=9600"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_FORCE_NON_COPYABLE_ERROR=0"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_POLL_USE_LOWPOWER_TIMER=0"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_ERROR_HIST_ENABLED=0"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_ERROR_HIST_SIZE=4"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_ERROR_FILENAME_CAPTURE_ENABLED=0"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_ERROR_ALL_THREADS_INFO=0"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_MAX_ERROR_FILENAME_LEN=16"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_CTHUNK_COUNT_MAX=8"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_CRASH_CAPTURE_ENABLED=0"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_ERROR_REBOOT_MAX=1"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_FATAL_ERROR_AUTO_REBOOT_ENABLED=0"
ASM_FLAGS += "-DMBED_CONF_PLATFORM_USE_MPU=1"
ASM_FLAGS += --cpu
ASM_FLAGS += Cortex-M0+


LD_FLAGS :=--skip_dynamic_initialization --threaded_lib --inline --config_def MBED_ROM_START=0x0 --config_def MBED_ROM_SIZE=0x20000 --config_def MBED_RAM_START=0x1ffff000 --config_def MBED_RAM_SIZE=0x4000 --config_def MBED_BOOT_STACK_SIZE=4096 --config_def XIP_ENABLE=0 
LD_SYS_LIBS := 

# Tools and Flags
###############################################################################
# Rules

.PHONY: all lst size


all: $(PROJECT).bin $(PROJECT).hex size


.s.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
  
	@$(AS) -c $(ASM_FLAGS) -o $@ $<
  


.S.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
  
	@$(AS) -c $(ASM_FLAGS) -o $@ $<
  

.c.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CC) $(C_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.cpp.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CPP) $(CXX_FLAGS) $(INCLUDE_PATHS) -o $@ $<




$(PROJECT).elf: $(OBJECTS) $(SYS_OBJECTS)  $(LINKER_SCRIPT) 
	+@echo "$(filter %.o, $^)" > .link_options.txt
	+@echo "link: $(notdir $@)"
	@$(LD) $(LD_FLAGS) --config $(filter-out %.o, $^) $(LIBRARY_PATHS) --output $@ -f .link_options.txt $(LIBRARIES) $(LD_SYS_LIBS)


$(PROJECT).bin: $(PROJECT).elf
	$(ELF2BIN) --bin $< $@
	+@echo "===== bin file ready to flash: $(OBJDIR)/$@ =====" 

$(PROJECT).hex: $(PROJECT).elf
	$(ELF2BIN) --ihex $< $@


# Rules
###############################################################################
# Dependencies

DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d)
-include $(DEPS)
endif

# Dependencies
###############################################################################
# Catch-all

%: ;

# Catch-all
###############################################################################
