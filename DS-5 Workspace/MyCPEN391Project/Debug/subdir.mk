################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../test_serial.c 

C_DEPS += \
./test_serial.d 

OBJS += \
./test_serial.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler 5'
	armcc -I"C:\intelFPGA\18.1\embedded\ip\altera\hps\altera_hps\hwlib\include" -I"C:\intelFPGA\18.1\embedded\ds-5\sw\gcc\arm-linux-gnueabihf\include" -I"C:\intelFPGA\18.1\embedded\ds-5\sw\gcc\arm-linux-gnueabihf\libc\usr\include" -I"C:\intelFPGA\18.1\embedded\ds-5\sw\gcc\lib\gcc\arm-linux-gnueabihf\4.8.3\include" -I"C:\intelFPGA\18.1\embedded\ds-5\sw\gcc\lib\gcc\arm-linux-gnueabihf\4.8.3\include-fixed" -I"C:\intelFPGA\18.1\embedded\ip\altera\hps\altera_hps\hwlib\include\soc_cv_av" --c99 -O0 -g --md --depend_format=unix_escaped --no_depend_system_headers -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


