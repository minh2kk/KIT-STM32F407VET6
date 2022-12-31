################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Lib_STD/Src/misc.c \
../Libraries/Lib_STD/Src/stm32f4xx_gpio.c \
../Libraries/Lib_STD/Src/stm32f4xx_rcc.c \
../Libraries/Lib_STD/Src/stm32f4xx_tim.c \
../Libraries/Lib_STD/Src/stm32f4xx_usart.c 

OBJS += \
./Libraries/Lib_STD/Src/misc.o \
./Libraries/Lib_STD/Src/stm32f4xx_gpio.o \
./Libraries/Lib_STD/Src/stm32f4xx_rcc.o \
./Libraries/Lib_STD/Src/stm32f4xx_tim.o \
./Libraries/Lib_STD/Src/stm32f4xx_usart.o 

C_DEPS += \
./Libraries/Lib_STD/Src/misc.d \
./Libraries/Lib_STD/Src/stm32f4xx_gpio.d \
./Libraries/Lib_STD/Src/stm32f4xx_rcc.d \
./Libraries/Lib_STD/Src/stm32f4xx_tim.d \
./Libraries/Lib_STD/Src/stm32f4xx_usart.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Lib_STD/Src/%.o Libraries/Lib_STD/Src/%.su: ../Libraries/Lib_STD/Src/%.c Libraries/Lib_STD/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F407VETx -DHSE_VALUE=8000000 -DUSE_STDPERIPH_DRIVER -DSTM32F40_41xxx -c -I../Inc -I"E:/DO_AN_TOT_NGHIEP_2022/STM32CubeIDE/STM32F407VET6/Libraries/CMSIS" -I"E:/DO_AN_TOT_NGHIEP_2022/STM32CubeIDE/STM32F407VET6/Libraries/Device" -I"E:/DO_AN_TOT_NGHIEP_2022/STM32CubeIDE/STM32F407VET6/Libraries/Lib_STD/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Libraries-2f-Lib_STD-2f-Src

clean-Libraries-2f-Lib_STD-2f-Src:
	-$(RM) ./Libraries/Lib_STD/Src/misc.d ./Libraries/Lib_STD/Src/misc.o ./Libraries/Lib_STD/Src/misc.su ./Libraries/Lib_STD/Src/stm32f4xx_gpio.d ./Libraries/Lib_STD/Src/stm32f4xx_gpio.o ./Libraries/Lib_STD/Src/stm32f4xx_gpio.su ./Libraries/Lib_STD/Src/stm32f4xx_rcc.d ./Libraries/Lib_STD/Src/stm32f4xx_rcc.o ./Libraries/Lib_STD/Src/stm32f4xx_rcc.su ./Libraries/Lib_STD/Src/stm32f4xx_tim.d ./Libraries/Lib_STD/Src/stm32f4xx_tim.o ./Libraries/Lib_STD/Src/stm32f4xx_tim.su ./Libraries/Lib_STD/Src/stm32f4xx_usart.d ./Libraries/Lib_STD/Src/stm32f4xx_usart.o ./Libraries/Lib_STD/Src/stm32f4xx_usart.su

.PHONY: clean-Libraries-2f-Lib_STD-2f-Src

