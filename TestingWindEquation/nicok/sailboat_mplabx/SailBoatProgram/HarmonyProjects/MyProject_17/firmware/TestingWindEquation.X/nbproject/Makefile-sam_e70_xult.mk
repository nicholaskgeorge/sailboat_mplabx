#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-sam_e70_xult.mk)" "nbproject/Makefile-local-sam_e70_xult.mk"
include nbproject/Makefile-local-sam_e70_xult.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=sam_e70_xult
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TestingWindEquation.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TestingWindEquation.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c ../src/config/sam_e70_xult/osal/osal_freertos.c ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c ../src/config/sam_e70_xult/stdio/xc32_monitor.c ../src/config/sam_e70_xult/system/cache/sys_cache.c ../src/config/sam_e70_xult/system/dma/sys_dma.c ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c ../src/config/sam_e70_xult/system/fs/src/sys_fs.c ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c ../src/config/sam_e70_xult/system/int/src/sys_int.c ../src/config/sam_e70_xult/system/time/src/sys_time.c ../src/config/sam_e70_xult/initialization.c ../src/config/sam_e70_xult/interrupts.c ../src/config/sam_e70_xult/exceptions.c ../src/config/sam_e70_xult/startup_xc32.c ../src/config/sam_e70_xult/libc_syscalls.c ../src/config/sam_e70_xult/freertos_hooks.c ../src/config/sam_e70_xult/tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/app_communication.c ../src/app_mast_control.c ../src/app_rudder_control.c ../src/app_anemometer.c ../src/app_gps.c ../src/app_imu.c ../src/app_test_wind.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/957281314/drv_i2c.o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o ${OBJECTDIR}/_ext/716655881/drv_usart.o ${OBJECTDIR}/_ext/1613695899/osal_freertos.o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ${OBJECTDIR}/_ext/719181653/plib_hsmci.o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o ${OBJECTDIR}/_ext/865331892/plib_tc3.o ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ${OBJECTDIR}/_ext/707186936/plib_usart0.o ${OBJECTDIR}/_ext/707186936/plib_usart2.o ${OBJECTDIR}/_ext/704852250/plib_xdmac.o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ${OBJECTDIR}/_ext/876653320/sys_cache.o ${OBJECTDIR}/_ext/984150034/sys_dma.o ${OBJECTDIR}/_ext/1043829778/ff.o ${OBJECTDIR}/_ext/1043829778/ffunicode.o ${OBJECTDIR}/_ext/1893760823/diskio.o ${OBJECTDIR}/_ext/1305476372/sys_fs.o ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/766002106/sys_int.o ${OBJECTDIR}/_ext/327803284/sys_time.o ${OBJECTDIR}/_ext/1728594169/initialization.o ${OBJECTDIR}/_ext/1728594169/interrupts.o ${OBJECTDIR}/_ext/1728594169/exceptions.o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o ${OBJECTDIR}/_ext/1728594169/tasks.o ${OBJECTDIR}/_ext/977623654/port.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_communication.o ${OBJECTDIR}/_ext/1360937237/app_mast_control.o ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o ${OBJECTDIR}/_ext/1360937237/app_anemometer.o ${OBJECTDIR}/_ext/1360937237/app_gps.o ${OBJECTDIR}/_ext/1360937237/app_imu.o ${OBJECTDIR}/_ext/1360937237/app_test_wind.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/957281314/drv_i2c.o.d ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d ${OBJECTDIR}/_ext/716655881/drv_usart.o.d ${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d ${OBJECTDIR}/_ext/1055500827/plib_clk.o.d ${OBJECTDIR}/_ext/1055499099/plib_efc.o.d ${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d ${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d ${OBJECTDIR}/_ext/1055488423/plib_pio.o.d ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d ${OBJECTDIR}/_ext/865331892/plib_tc3.o.d ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d ${OBJECTDIR}/_ext/707186936/plib_usart1.o.d ${OBJECTDIR}/_ext/707186936/plib_usart0.o.d ${OBJECTDIR}/_ext/707186936/plib_usart2.o.d ${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d ${OBJECTDIR}/_ext/876653320/sys_cache.o.d ${OBJECTDIR}/_ext/984150034/sys_dma.o.d ${OBJECTDIR}/_ext/1043829778/ff.o.d ${OBJECTDIR}/_ext/1043829778/ffunicode.o.d ${OBJECTDIR}/_ext/1893760823/diskio.o.d ${OBJECTDIR}/_ext/1305476372/sys_fs.o.d ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d ${OBJECTDIR}/_ext/766002106/sys_int.o.d ${OBJECTDIR}/_ext/327803284/sys_time.o.d ${OBJECTDIR}/_ext/1728594169/initialization.o.d ${OBJECTDIR}/_ext/1728594169/interrupts.o.d ${OBJECTDIR}/_ext/1728594169/exceptions.o.d ${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d ${OBJECTDIR}/_ext/1728594169/tasks.o.d ${OBJECTDIR}/_ext/977623654/port.o.d ${OBJECTDIR}/_ext/1665200909/heap_1.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_communication.o.d ${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d ${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d ${OBJECTDIR}/_ext/1360937237/app_gps.o.d ${OBJECTDIR}/_ext/1360937237/app_imu.o.d ${OBJECTDIR}/_ext/1360937237/app_test_wind.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/957281314/drv_i2c.o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o ${OBJECTDIR}/_ext/716655881/drv_usart.o ${OBJECTDIR}/_ext/1613695899/osal_freertos.o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ${OBJECTDIR}/_ext/719181653/plib_hsmci.o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o ${OBJECTDIR}/_ext/865331892/plib_tc3.o ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ${OBJECTDIR}/_ext/707186936/plib_usart0.o ${OBJECTDIR}/_ext/707186936/plib_usart2.o ${OBJECTDIR}/_ext/704852250/plib_xdmac.o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ${OBJECTDIR}/_ext/876653320/sys_cache.o ${OBJECTDIR}/_ext/984150034/sys_dma.o ${OBJECTDIR}/_ext/1043829778/ff.o ${OBJECTDIR}/_ext/1043829778/ffunicode.o ${OBJECTDIR}/_ext/1893760823/diskio.o ${OBJECTDIR}/_ext/1305476372/sys_fs.o ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/766002106/sys_int.o ${OBJECTDIR}/_ext/327803284/sys_time.o ${OBJECTDIR}/_ext/1728594169/initialization.o ${OBJECTDIR}/_ext/1728594169/interrupts.o ${OBJECTDIR}/_ext/1728594169/exceptions.o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o ${OBJECTDIR}/_ext/1728594169/tasks.o ${OBJECTDIR}/_ext/977623654/port.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_communication.o ${OBJECTDIR}/_ext/1360937237/app_mast_control.o ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o ${OBJECTDIR}/_ext/1360937237/app_anemometer.o ${OBJECTDIR}/_ext/1360937237/app_gps.o ${OBJECTDIR}/_ext/1360937237/app_imu.o ${OBJECTDIR}/_ext/1360937237/app_test_wind.o

# Source Files
SOURCEFILES=../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c ../src/config/sam_e70_xult/osal/osal_freertos.c ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c ../src/config/sam_e70_xult/stdio/xc32_monitor.c ../src/config/sam_e70_xult/system/cache/sys_cache.c ../src/config/sam_e70_xult/system/dma/sys_dma.c ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c ../src/config/sam_e70_xult/system/fs/src/sys_fs.c ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c ../src/config/sam_e70_xult/system/int/src/sys_int.c ../src/config/sam_e70_xult/system/time/src/sys_time.c ../src/config/sam_e70_xult/initialization.c ../src/config/sam_e70_xult/interrupts.c ../src/config/sam_e70_xult/exceptions.c ../src/config/sam_e70_xult/startup_xc32.c ../src/config/sam_e70_xult/libc_syscalls.c ../src/config/sam_e70_xult/freertos_hooks.c ../src/config/sam_e70_xult/tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/app_communication.c ../src/app_mast_control.c ../src/app_rudder_control.c ../src/app_anemometer.c ../src/app_gps.c ../src/app_imu.c ../src/app_test_wind.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-sam_e70_xult.mk dist/${CND_CONF}/${IMAGE_TYPE}/TestingWindEquation.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAME70Q21B
MP_LINKER_FILE_OPTION=,--script="..\src\config\sam_e70_xult\ATSAME70Q21B.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/957281314/drv_i2c.o: ../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c  .generated_files/flags/sam_e70_xult/a8dfbf4d9c861fbf61ac44008ba463a17c837355 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/957281314" 
	@${RM} ${OBJECTDIR}/_ext/957281314/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/957281314/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957281314/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/957281314/drv_i2c.o ../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o: ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c  .generated_files/flags/sam_e70_xult/cad669beca11938fc0bf076ac6330aaf10301f37 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1565510230" 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d" -o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o: ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c  .generated_files/flags/sam_e70_xult/1df6ac9b7102ae8771b831531eae8721ef6d2bce .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1565510230" 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d" -o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/716655881/drv_usart.o: ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c  .generated_files/flags/sam_e70_xult/704f2a65df79dab377eadcf4a4cf43c67099745c .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/716655881" 
	@${RM} ${OBJECTDIR}/_ext/716655881/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/716655881/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/716655881/drv_usart.o.d" -o ${OBJECTDIR}/_ext/716655881/drv_usart.o ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1613695899/osal_freertos.o: ../src/config/sam_e70_xult/osal/osal_freertos.c  .generated_files/flags/sam_e70_xult/6f4ab3bcc1c67f6aabb7494eb2b3d1670bd23f54 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1613695899" 
	@${RM} ${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613695899/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1613695899/osal_freertos.o ../src/config/sam_e70_xult/osal/osal_freertos.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055500827/plib_clk.o: ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c  .generated_files/flags/sam_e70_xult/455f0710170fca09e778562399eda783b627d3bb .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1055500827" 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055500827/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055499099/plib_efc.o: ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c  .generated_files/flags/sam_e70_xult/b5355c4a6b23da71729310e172f3f5bc894e9b19 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1055499099" 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055499099/plib_efc.o.d" -o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/719181653/plib_hsmci.o: ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c  .generated_files/flags/sam_e70_xult/bf192f713bc990c31555a5b4827eee4266398b9a .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/719181653" 
	@${RM} ${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d 
	@${RM} ${OBJECTDIR}/_ext/719181653/plib_hsmci.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d" -o ${OBJECTDIR}/_ext/719181653/plib_hsmci.o ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1639550079/plib_nvic.o: ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e70_xult/6bde10deb08b6a320271fc83e6cbb6fdfea15b0a .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1639550079" 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055488423/plib_pio.o: ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c  .generated_files/flags/sam_e70_xult/fb07d7f6e1eb2cc7cb0a0311f6d4795fab3d4b36 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1055488423" 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055488423/plib_pio.o.d" -o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055487991/plib_pwm0.o: ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c  .generated_files/flags/sam_e70_xult/265627a2e58bab32e0d19f7ee72a333856ed364 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1055487991" 
	@${RM} ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/865331892/plib_tc3.o: ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c  .generated_files/flags/sam_e70_xult/4f721fc3a535885152c98f78b0776b8d66034817 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/865331892" 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/865331892/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/865331892/plib_tc3.o ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o: ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/flags/sam_e70_xult/c5bcba62c10e5d86861d5ff754fa53a521158d3a .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1539215101" 
	@${RM} ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart1.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c  .generated_files/flags/sam_e70_xult/21f7ed86f2e3515557136134d7df42a0208a6c55 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart0.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c  .generated_files/flags/sam_e70_xult/29a242ddafae2ec21dc31aa83cfff7eb3e1830cd .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart0.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart2.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c  .generated_files/flags/sam_e70_xult/add44c94c2e2cb2a034ad80d4733c3b41438b694 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart2.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart2.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/704852250/plib_xdmac.o: ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c  .generated_files/flags/sam_e70_xult/3563baa5aa484293de6ad3e8cb505001964b594c .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/704852250" 
	@${RM} ${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/704852250/plib_xdmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d" -o ${OBJECTDIR}/_ext/704852250/plib_xdmac.o ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1518761459/xc32_monitor.o: ../src/config/sam_e70_xult/stdio/xc32_monitor.c  .generated_files/flags/sam_e70_xult/c29139dd4c23e7bf5fe24dd620c0904f946e8653 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1518761459" 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ../src/config/sam_e70_xult/stdio/xc32_monitor.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/876653320/sys_cache.o: ../src/config/sam_e70_xult/system/cache/sys_cache.c  .generated_files/flags/sam_e70_xult/e7866efb3e8703991c1192bda32208490cb03d02 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/876653320" 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/876653320/sys_cache.o.d" -o ${OBJECTDIR}/_ext/876653320/sys_cache.o ../src/config/sam_e70_xult/system/cache/sys_cache.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/984150034/sys_dma.o: ../src/config/sam_e70_xult/system/dma/sys_dma.c  .generated_files/flags/sam_e70_xult/8e38cb8ef3e6853afed7922a7ebd80b14718e72b .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/984150034" 
	@${RM} ${OBJECTDIR}/_ext/984150034/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/984150034/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/984150034/sys_dma.o.d" -o ${OBJECTDIR}/_ext/984150034/sys_dma.o ../src/config/sam_e70_xult/system/dma/sys_dma.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1043829778/ff.o: ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/sam_e70_xult/c92156bd9002b2bbeb98fe3a39fd00094033b5a8 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1043829778" 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1043829778/ff.o.d" -o ${OBJECTDIR}/_ext/1043829778/ff.o ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1043829778/ffunicode.o: ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/sam_e70_xult/488edf6f5a388959815f0ccde825d5fc583949d7 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1043829778" 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1043829778/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1043829778/ffunicode.o ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1893760823/diskio.o: ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/sam_e70_xult/48d440bf35cc1ded2ee8ef08f6064069d51e5bd8 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1893760823" 
	@${RM} ${OBJECTDIR}/_ext/1893760823/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1893760823/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1893760823/diskio.o.d" -o ${OBJECTDIR}/_ext/1893760823/diskio.o ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs.c  .generated_files/flags/sam_e70_xult/d3933d590f8de77eaeb4db60dde704894d3cde20 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs.o ../src/config/sam_e70_xult/system/fs/src/sys_fs.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/sam_e70_xult/79600e1c9d60b4941844d29be5169408c8686c9b .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/sam_e70_xult/f48c1b0c8cfbbb0ff539b256348c520004675b3c .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/766002106/sys_int.o: ../src/config/sam_e70_xult/system/int/src/sys_int.c  .generated_files/flags/sam_e70_xult/505e15ffe52f6f2449fa4de9df27b40410d54194 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/766002106" 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/766002106/sys_int.o.d" -o ${OBJECTDIR}/_ext/766002106/sys_int.o ../src/config/sam_e70_xult/system/int/src/sys_int.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/327803284/sys_time.o: ../src/config/sam_e70_xult/system/time/src/sys_time.c  .generated_files/flags/sam_e70_xult/19f990aced7961cf3f336069cb0fe27df30535bf .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/327803284" 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327803284/sys_time.o.d" -o ${OBJECTDIR}/_ext/327803284/sys_time.o ../src/config/sam_e70_xult/system/time/src/sys_time.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/initialization.o: ../src/config/sam_e70_xult/initialization.c  .generated_files/flags/sam_e70_xult/bbff8d55f4f3b09452e21b469b0f1b260f8a57f4 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/initialization.o.d" -o ${OBJECTDIR}/_ext/1728594169/initialization.o ../src/config/sam_e70_xult/initialization.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/interrupts.o: ../src/config/sam_e70_xult/interrupts.c  .generated_files/flags/sam_e70_xult/7fc2845d6a06c2376c604960d86115f48ec59e92 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/interrupts.o.d" -o ${OBJECTDIR}/_ext/1728594169/interrupts.o ../src/config/sam_e70_xult/interrupts.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/exceptions.o: ../src/config/sam_e70_xult/exceptions.c  .generated_files/flags/sam_e70_xult/8b7010c596d35ba548dec4d5828375ca64506ccb .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/exceptions.o.d" -o ${OBJECTDIR}/_ext/1728594169/exceptions.o ../src/config/sam_e70_xult/exceptions.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/startup_xc32.o: ../src/config/sam_e70_xult/startup_xc32.c  .generated_files/flags/sam_e70_xult/e830ef494310b21b58e8864e63ec2e58317665f2 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ../src/config/sam_e70_xult/startup_xc32.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/libc_syscalls.o: ../src/config/sam_e70_xult/libc_syscalls.c  .generated_files/flags/sam_e70_xult/5a612083eeed8b72d5416487f585df0c3dd68e48 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ../src/config/sam_e70_xult/libc_syscalls.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/freertos_hooks.o: ../src/config/sam_e70_xult/freertos_hooks.c  .generated_files/flags/sam_e70_xult/3b01d5c42d888784270f5d72abb6f593e23c6a8d .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o ../src/config/sam_e70_xult/freertos_hooks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/tasks.o: ../src/config/sam_e70_xult/tasks.c  .generated_files/flags/sam_e70_xult/366fa7c7ced1c307a0a6592fbe32ec83d4d3bc2c .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/tasks.o.d" -o ${OBJECTDIR}/_ext/1728594169/tasks.o ../src/config/sam_e70_xult/tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/977623654/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c  .generated_files/flags/sam_e70_xult/a52424b7e9d7a5c386f7e94e22cd2918f5ef49d0 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/977623654" 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977623654/port.o.d" -o ${OBJECTDIR}/_ext/977623654/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/sam_e70_xult/e686872e0844e6225d39b067576f093497c9c0e0 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/sam_e70_xult/800a590df7386af98ba787bf9ec57b515f75b384 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/sam_e70_xult/ec06ec50daa3be683619fd4e3cbf60171e943a3b .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/sam_e70_xult/d9722f2a8e7e1f3f4080f5fb64ae95b5183874f8 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/sam_e70_xult/e1731cb56f4780aec1b632be181709bbd2c31553 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/sam_e70_xult/502187f4b95cd3ed8a93267261c5f6a172e559b5 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/sam_e70_xult/6e7e0d12d0562bb953d17f3765d781ba8fa0af3d .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/sam_e70_xult/dfef3b54e858fce75725b7be518240050802d560 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_e70_xult/e204d92cd83d3f104470d7daf1a7cc5e444bedb .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_communication.o: ../src/app_communication.c  .generated_files/flags/sam_e70_xult/daa7be593770a7ba526c29b76d12223edac8f7c0 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_communication.o ../src/app_communication.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_mast_control.o: ../src/app_mast_control.c  .generated_files/flags/sam_e70_xult/68680d6e87eadecb9b916f49c0d32b0a5e4156c .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mast_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_mast_control.o ../src/app_mast_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_rudder_control.o: ../src/app_rudder_control.c  .generated_files/flags/sam_e70_xult/c24e16b598f8959d97a6b83725b3ec6c20cdddfa .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o ../src/app_rudder_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_anemometer.o: ../src/app_anemometer.c  .generated_files/flags/sam_e70_xult/65ccec5a76f662a8bac6e0b8968c628ec9bc6a7 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_anemometer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_anemometer.o ../src/app_anemometer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_gps.o: ../src/app_gps.c  .generated_files/flags/sam_e70_xult/697362548b8793fd2046d06822a43b84ec83939b .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_gps.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_gps.o ../src/app_gps.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_imu.o: ../src/app_imu.c  .generated_files/flags/sam_e70_xult/2ed582b6fe2b726e352a76b353f87ff20af7ad1 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_imu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_imu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_imu.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_imu.o ../src/app_imu.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_test_wind.o: ../src/app_test_wind.c  .generated_files/flags/sam_e70_xult/f725544375f2cba0abab39f0f284e6d12d00c61f .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_test_wind.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_test_wind.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_test_wind.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_test_wind.o ../src/app_test_wind.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/957281314/drv_i2c.o: ../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c  .generated_files/flags/sam_e70_xult/f3457dc162fd61d4db7b7b43efe1a8753aa16704 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/957281314" 
	@${RM} ${OBJECTDIR}/_ext/957281314/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/957281314/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957281314/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/957281314/drv_i2c.o ../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o: ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c  .generated_files/flags/sam_e70_xult/822051cc488cb4c0eb5924d8680ae7e76dc50a7a .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1565510230" 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d" -o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o: ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c  .generated_files/flags/sam_e70_xult/ad3a8a9171db27f281b90d91b5a4e811ba85e1a4 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1565510230" 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d" -o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/716655881/drv_usart.o: ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c  .generated_files/flags/sam_e70_xult/f810df42f9e65a66b00386a3d1bbe05125cf3b1e .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/716655881" 
	@${RM} ${OBJECTDIR}/_ext/716655881/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/716655881/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/716655881/drv_usart.o.d" -o ${OBJECTDIR}/_ext/716655881/drv_usart.o ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1613695899/osal_freertos.o: ../src/config/sam_e70_xult/osal/osal_freertos.c  .generated_files/flags/sam_e70_xult/851246074ba5afa9036520f7ca4aa3af555e0df0 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1613695899" 
	@${RM} ${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613695899/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1613695899/osal_freertos.o ../src/config/sam_e70_xult/osal/osal_freertos.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055500827/plib_clk.o: ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c  .generated_files/flags/sam_e70_xult/1594428ada92da073abc4cb198ef86aaccb2bd09 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1055500827" 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055500827/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055499099/plib_efc.o: ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c  .generated_files/flags/sam_e70_xult/a286057be40f8d77535fbd0d67b792f421381e07 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1055499099" 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055499099/plib_efc.o.d" -o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/719181653/plib_hsmci.o: ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c  .generated_files/flags/sam_e70_xult/81f48ed04e68935d30a47191c6085888bbdd5618 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/719181653" 
	@${RM} ${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d 
	@${RM} ${OBJECTDIR}/_ext/719181653/plib_hsmci.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d" -o ${OBJECTDIR}/_ext/719181653/plib_hsmci.o ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1639550079/plib_nvic.o: ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e70_xult/d51bc5ca82e01d6e0556d9660488c7e648a69e8c .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1639550079" 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055488423/plib_pio.o: ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c  .generated_files/flags/sam_e70_xult/445e9b0a82bf9bebc3972c1a6a968a224d799af7 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1055488423" 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055488423/plib_pio.o.d" -o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055487991/plib_pwm0.o: ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c  .generated_files/flags/sam_e70_xult/627cc89b06f21dbe6c56e48c58580e0b2e67356e .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1055487991" 
	@${RM} ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/865331892/plib_tc3.o: ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c  .generated_files/flags/sam_e70_xult/745cccaf80bd9259b7ddac4500e422e4eb36bc64 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/865331892" 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/865331892/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/865331892/plib_tc3.o ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o: ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/flags/sam_e70_xult/316947add18cea24fd0c812a2ebb3e251c6b4d91 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1539215101" 
	@${RM} ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart1.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c  .generated_files/flags/sam_e70_xult/9b142b752cd2599376af62c8e0579acca78b5901 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart0.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c  .generated_files/flags/sam_e70_xult/85bf6b7216f73efbd7d94df57a890cefe35f26dc .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart0.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart2.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c  .generated_files/flags/sam_e70_xult/ff8d7f869e77dc3a3acae0f3ce4ec68297238c0e .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart2.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart2.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/704852250/plib_xdmac.o: ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c  .generated_files/flags/sam_e70_xult/a24b97932594bbc36560ce8c8a67649ef362b03 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/704852250" 
	@${RM} ${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/704852250/plib_xdmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d" -o ${OBJECTDIR}/_ext/704852250/plib_xdmac.o ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1518761459/xc32_monitor.o: ../src/config/sam_e70_xult/stdio/xc32_monitor.c  .generated_files/flags/sam_e70_xult/2b2f5944a87538776ef31058bfdc1f8affc83004 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1518761459" 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ../src/config/sam_e70_xult/stdio/xc32_monitor.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/876653320/sys_cache.o: ../src/config/sam_e70_xult/system/cache/sys_cache.c  .generated_files/flags/sam_e70_xult/f3d2f31f7312ea7a949b7ec2a3fc63ef472bb166 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/876653320" 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/876653320/sys_cache.o.d" -o ${OBJECTDIR}/_ext/876653320/sys_cache.o ../src/config/sam_e70_xult/system/cache/sys_cache.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/984150034/sys_dma.o: ../src/config/sam_e70_xult/system/dma/sys_dma.c  .generated_files/flags/sam_e70_xult/def1ea14f47c1c3c93ddc01257d62d48be8febd8 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/984150034" 
	@${RM} ${OBJECTDIR}/_ext/984150034/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/984150034/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/984150034/sys_dma.o.d" -o ${OBJECTDIR}/_ext/984150034/sys_dma.o ../src/config/sam_e70_xult/system/dma/sys_dma.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1043829778/ff.o: ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/sam_e70_xult/82e65482c8e4d840a30d9a267d8dbd27ad512e47 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1043829778" 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1043829778/ff.o.d" -o ${OBJECTDIR}/_ext/1043829778/ff.o ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1043829778/ffunicode.o: ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/sam_e70_xult/5199a1e133ec1c6546e5758b40480855ba56dfd1 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1043829778" 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1043829778/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1043829778/ffunicode.o ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1893760823/diskio.o: ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/sam_e70_xult/589c257f7c5aea573cd3dc7612162914859eb1c9 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1893760823" 
	@${RM} ${OBJECTDIR}/_ext/1893760823/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1893760823/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1893760823/diskio.o.d" -o ${OBJECTDIR}/_ext/1893760823/diskio.o ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs.c  .generated_files/flags/sam_e70_xult/4ac7d0019b5d9ffe0075f6d8e8a305253cbf9bbf .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs.o ../src/config/sam_e70_xult/system/fs/src/sys_fs.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/sam_e70_xult/983c86db3b40c65fb9681f44c03fb477a4a05d17 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/sam_e70_xult/9a821353ed4799acbd4119d99f77032bd72eecd0 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/766002106/sys_int.o: ../src/config/sam_e70_xult/system/int/src/sys_int.c  .generated_files/flags/sam_e70_xult/cd3e0d14381dfcbc653c42e27f62ce6e91f967e6 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/766002106" 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/766002106/sys_int.o.d" -o ${OBJECTDIR}/_ext/766002106/sys_int.o ../src/config/sam_e70_xult/system/int/src/sys_int.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/327803284/sys_time.o: ../src/config/sam_e70_xult/system/time/src/sys_time.c  .generated_files/flags/sam_e70_xult/6be8f821e739df3353242a62f3a22343ac3d5a6a .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/327803284" 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327803284/sys_time.o.d" -o ${OBJECTDIR}/_ext/327803284/sys_time.o ../src/config/sam_e70_xult/system/time/src/sys_time.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/initialization.o: ../src/config/sam_e70_xult/initialization.c  .generated_files/flags/sam_e70_xult/b051b187ff7d3fce0553957e06c5566ad0c56f30 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/initialization.o.d" -o ${OBJECTDIR}/_ext/1728594169/initialization.o ../src/config/sam_e70_xult/initialization.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/interrupts.o: ../src/config/sam_e70_xult/interrupts.c  .generated_files/flags/sam_e70_xult/59c9854084896813a252cec4abb7bd21057ade66 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/interrupts.o.d" -o ${OBJECTDIR}/_ext/1728594169/interrupts.o ../src/config/sam_e70_xult/interrupts.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/exceptions.o: ../src/config/sam_e70_xult/exceptions.c  .generated_files/flags/sam_e70_xult/6a2b9a53382c080bed447279b5f870d3ad091479 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/exceptions.o.d" -o ${OBJECTDIR}/_ext/1728594169/exceptions.o ../src/config/sam_e70_xult/exceptions.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/startup_xc32.o: ../src/config/sam_e70_xult/startup_xc32.c  .generated_files/flags/sam_e70_xult/46d098a8367be545d332383eea39949e9c054f9a .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ../src/config/sam_e70_xult/startup_xc32.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/libc_syscalls.o: ../src/config/sam_e70_xult/libc_syscalls.c  .generated_files/flags/sam_e70_xult/cc0a18029f3d645d6bcd68177ad5ea943aea8c11 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ../src/config/sam_e70_xult/libc_syscalls.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/freertos_hooks.o: ../src/config/sam_e70_xult/freertos_hooks.c  .generated_files/flags/sam_e70_xult/6dac391ae58f9c457be17386a93b339c010ea6c0 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o ../src/config/sam_e70_xult/freertos_hooks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/tasks.o: ../src/config/sam_e70_xult/tasks.c  .generated_files/flags/sam_e70_xult/117f5a9f5a41b7d67370845633e4eaa9f7482486 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/tasks.o.d" -o ${OBJECTDIR}/_ext/1728594169/tasks.o ../src/config/sam_e70_xult/tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/977623654/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c  .generated_files/flags/sam_e70_xult/d9a621d7f311e3ac54ee2865c02dc90fda63d891 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/977623654" 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977623654/port.o.d" -o ${OBJECTDIR}/_ext/977623654/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/sam_e70_xult/a715a3b775f758661b3b2e7aa1b16d8a403c9640 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/sam_e70_xult/439d97272774f64251f398afa98eeeebd64c7bd0 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/sam_e70_xult/31d78362ba216a947ecd043ba0be3135b23fb43c .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/sam_e70_xult/ee1c03011f5e1cb3ce433ad3266eeca06e423d66 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/sam_e70_xult/b9020ac77507ac8ee982ad23db55c4d8e37862f1 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/sam_e70_xult/63670e7adeee81ecd26f7f3e044fbfb83f1c536d .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/sam_e70_xult/eef0c75782e86b252cc1d80417ba621a596ee99b .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/sam_e70_xult/65e309b6d029032d927b921bc7f4bc3abf34872d .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_e70_xult/2cd9d17f351140b465b0cdb448033d08cc01c2f2 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_communication.o: ../src/app_communication.c  .generated_files/flags/sam_e70_xult/454c6c885298f2d2cc5845744ac72f9afb43eca4 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_communication.o ../src/app_communication.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_mast_control.o: ../src/app_mast_control.c  .generated_files/flags/sam_e70_xult/69ee78671e39923b39724bdd56186f2c3c5bff04 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mast_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_mast_control.o ../src/app_mast_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_rudder_control.o: ../src/app_rudder_control.c  .generated_files/flags/sam_e70_xult/7977cf408b99336a4b0e67fd427aded4524bb0c3 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o ../src/app_rudder_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_anemometer.o: ../src/app_anemometer.c  .generated_files/flags/sam_e70_xult/e62c4744a72820a78e055fc425456e8115e46838 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_anemometer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_anemometer.o ../src/app_anemometer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_gps.o: ../src/app_gps.c  .generated_files/flags/sam_e70_xult/b596ea0b56dd23a83a35db973962a8d45bb3369b .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_gps.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_gps.o ../src/app_gps.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_imu.o: ../src/app_imu.c  .generated_files/flags/sam_e70_xult/45860c962e33c4356fd9e2f88675bd4aaee87dcf .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_imu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_imu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_imu.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_imu.o ../src/app_imu.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_test_wind.o: ../src/app_test_wind.c  .generated_files/flags/sam_e70_xult/bb2e27ee613393a32ae0af0b5ddd1d333b4c2e85 .generated_files/flags/sam_e70_xult/b2448b5f05febccdcdaac196590cebc887b614de
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_test_wind.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_test_wind.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_test_wind.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_test_wind.o ../src/app_test_wind.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/TestingWindEquation.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_e70_xult/ATSAME70Q21B.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/TestingWindEquation.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/same70b"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/TestingWindEquation.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_e70_xult/ATSAME70Q21B.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/TestingWindEquation.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/same70b"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/TestingWindEquation.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/sam_e70_xult
	${RM} -r dist/sam_e70_xult

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
