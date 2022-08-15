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
FINAL_IMAGE=${DISTDIR}/SailBoatProgram.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/SailBoatProgram.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c ../src/config/sam_e70_xult/osal/osal_freertos.c ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c ../src/config/sam_e70_xult/stdio/xc32_monitor.c ../src/config/sam_e70_xult/system/cache/sys_cache.c ../src/config/sam_e70_xult/system/dma/sys_dma.c ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c ../src/config/sam_e70_xult/system/fs/src/sys_fs.c ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c ../src/config/sam_e70_xult/system/int/src/sys_int.c ../src/config/sam_e70_xult/system/time/src/sys_time.c ../src/config/sam_e70_xult/initialization.c ../src/config/sam_e70_xult/interrupts.c ../src/config/sam_e70_xult/exceptions.c ../src/config/sam_e70_xult/startup_xc32.c ../src/config/sam_e70_xult/libc_syscalls.c ../src/config/sam_e70_xult/freertos_hooks.c ../src/config/sam_e70_xult/tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/app_communication.c ../src/app_mast_control.c ../src/app_course_algorithm.c ../src/app_rudder_control.c ../src/app_anemometer.c ../src/app_gps.c ../src/app_imu.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/957281314/drv_i2c.o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o ${OBJECTDIR}/_ext/716655881/drv_usart.o ${OBJECTDIR}/_ext/1613695899/osal_freertos.o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ${OBJECTDIR}/_ext/719181653/plib_hsmci.o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o ${OBJECTDIR}/_ext/865331892/plib_tc3.o ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ${OBJECTDIR}/_ext/707186936/plib_usart0.o ${OBJECTDIR}/_ext/707186936/plib_usart2.o ${OBJECTDIR}/_ext/704852250/plib_xdmac.o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ${OBJECTDIR}/_ext/876653320/sys_cache.o ${OBJECTDIR}/_ext/984150034/sys_dma.o ${OBJECTDIR}/_ext/1043829778/ff.o ${OBJECTDIR}/_ext/1043829778/ffunicode.o ${OBJECTDIR}/_ext/1893760823/diskio.o ${OBJECTDIR}/_ext/1305476372/sys_fs.o ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/766002106/sys_int.o ${OBJECTDIR}/_ext/327803284/sys_time.o ${OBJECTDIR}/_ext/1728594169/initialization.o ${OBJECTDIR}/_ext/1728594169/interrupts.o ${OBJECTDIR}/_ext/1728594169/exceptions.o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o ${OBJECTDIR}/_ext/1728594169/tasks.o ${OBJECTDIR}/_ext/977623654/port.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_communication.o ${OBJECTDIR}/_ext/1360937237/app_mast_control.o ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o ${OBJECTDIR}/_ext/1360937237/app_anemometer.o ${OBJECTDIR}/_ext/1360937237/app_gps.o ${OBJECTDIR}/_ext/1360937237/app_imu.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/957281314/drv_i2c.o.d ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d ${OBJECTDIR}/_ext/716655881/drv_usart.o.d ${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d ${OBJECTDIR}/_ext/1055500827/plib_clk.o.d ${OBJECTDIR}/_ext/1055499099/plib_efc.o.d ${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d ${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d ${OBJECTDIR}/_ext/1055488423/plib_pio.o.d ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d ${OBJECTDIR}/_ext/865331892/plib_tc3.o.d ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d ${OBJECTDIR}/_ext/707186936/plib_usart1.o.d ${OBJECTDIR}/_ext/707186936/plib_usart0.o.d ${OBJECTDIR}/_ext/707186936/plib_usart2.o.d ${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d ${OBJECTDIR}/_ext/876653320/sys_cache.o.d ${OBJECTDIR}/_ext/984150034/sys_dma.o.d ${OBJECTDIR}/_ext/1043829778/ff.o.d ${OBJECTDIR}/_ext/1043829778/ffunicode.o.d ${OBJECTDIR}/_ext/1893760823/diskio.o.d ${OBJECTDIR}/_ext/1305476372/sys_fs.o.d ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d ${OBJECTDIR}/_ext/766002106/sys_int.o.d ${OBJECTDIR}/_ext/327803284/sys_time.o.d ${OBJECTDIR}/_ext/1728594169/initialization.o.d ${OBJECTDIR}/_ext/1728594169/interrupts.o.d ${OBJECTDIR}/_ext/1728594169/exceptions.o.d ${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d ${OBJECTDIR}/_ext/1728594169/tasks.o.d ${OBJECTDIR}/_ext/977623654/port.o.d ${OBJECTDIR}/_ext/1665200909/heap_1.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_communication.o.d ${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o.d ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d ${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d ${OBJECTDIR}/_ext/1360937237/app_gps.o.d ${OBJECTDIR}/_ext/1360937237/app_imu.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/957281314/drv_i2c.o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o ${OBJECTDIR}/_ext/716655881/drv_usart.o ${OBJECTDIR}/_ext/1613695899/osal_freertos.o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ${OBJECTDIR}/_ext/719181653/plib_hsmci.o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o ${OBJECTDIR}/_ext/865331892/plib_tc3.o ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ${OBJECTDIR}/_ext/707186936/plib_usart0.o ${OBJECTDIR}/_ext/707186936/plib_usart2.o ${OBJECTDIR}/_ext/704852250/plib_xdmac.o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ${OBJECTDIR}/_ext/876653320/sys_cache.o ${OBJECTDIR}/_ext/984150034/sys_dma.o ${OBJECTDIR}/_ext/1043829778/ff.o ${OBJECTDIR}/_ext/1043829778/ffunicode.o ${OBJECTDIR}/_ext/1893760823/diskio.o ${OBJECTDIR}/_ext/1305476372/sys_fs.o ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/766002106/sys_int.o ${OBJECTDIR}/_ext/327803284/sys_time.o ${OBJECTDIR}/_ext/1728594169/initialization.o ${OBJECTDIR}/_ext/1728594169/interrupts.o ${OBJECTDIR}/_ext/1728594169/exceptions.o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o ${OBJECTDIR}/_ext/1728594169/tasks.o ${OBJECTDIR}/_ext/977623654/port.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_communication.o ${OBJECTDIR}/_ext/1360937237/app_mast_control.o ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o ${OBJECTDIR}/_ext/1360937237/app_anemometer.o ${OBJECTDIR}/_ext/1360937237/app_gps.o ${OBJECTDIR}/_ext/1360937237/app_imu.o

# Source Files
SOURCEFILES=../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c ../src/config/sam_e70_xult/osal/osal_freertos.c ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c ../src/config/sam_e70_xult/stdio/xc32_monitor.c ../src/config/sam_e70_xult/system/cache/sys_cache.c ../src/config/sam_e70_xult/system/dma/sys_dma.c ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c ../src/config/sam_e70_xult/system/fs/src/sys_fs.c ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c ../src/config/sam_e70_xult/system/int/src/sys_int.c ../src/config/sam_e70_xult/system/time/src/sys_time.c ../src/config/sam_e70_xult/initialization.c ../src/config/sam_e70_xult/interrupts.c ../src/config/sam_e70_xult/exceptions.c ../src/config/sam_e70_xult/startup_xc32.c ../src/config/sam_e70_xult/libc_syscalls.c ../src/config/sam_e70_xult/freertos_hooks.c ../src/config/sam_e70_xult/tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/app_communication.c ../src/app_mast_control.c ../src/app_course_algorithm.c ../src/app_rudder_control.c ../src/app_anemometer.c ../src/app_gps.c ../src/app_imu.c

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
	${MAKE}  -f nbproject/Makefile-sam_e70_xult.mk ${DISTDIR}/SailBoatProgram.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/957281314/drv_i2c.o: ../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c  .generated_files/flags/sam_e70_xult/92f0204c954a924d0678710809a9816e26372f63 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/957281314" 
	@${RM} ${OBJECTDIR}/_ext/957281314/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/957281314/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957281314/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/957281314/drv_i2c.o ../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o: ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c  .generated_files/flags/sam_e70_xult/f4c439dddbcd560f8d6784109bad17fdb932063d .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1565510230" 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d" -o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o: ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c  .generated_files/flags/sam_e70_xult/215dc38000934cf5f097c785eadfd39f851dc9d8 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1565510230" 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d" -o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/716655881/drv_usart.o: ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c  .generated_files/flags/sam_e70_xult/8577466da4c4109b9cfc909319a948afbd4f4a61 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/716655881" 
	@${RM} ${OBJECTDIR}/_ext/716655881/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/716655881/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/716655881/drv_usart.o.d" -o ${OBJECTDIR}/_ext/716655881/drv_usart.o ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1613695899/osal_freertos.o: ../src/config/sam_e70_xult/osal/osal_freertos.c  .generated_files/flags/sam_e70_xult/a3b6974777057d6cc148a400c07af34809ea93c5 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1613695899" 
	@${RM} ${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613695899/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1613695899/osal_freertos.o ../src/config/sam_e70_xult/osal/osal_freertos.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055500827/plib_clk.o: ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c  .generated_files/flags/sam_e70_xult/d24c997c8fd422ed93e25537c430540ed129be45 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1055500827" 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055500827/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055499099/plib_efc.o: ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c  .generated_files/flags/sam_e70_xult/96dc85e9c11b20f6683ab1de492078f9bcfddb43 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1055499099" 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055499099/plib_efc.o.d" -o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/719181653/plib_hsmci.o: ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c  .generated_files/flags/sam_e70_xult/e3db21842f1cd11a46495f7f14ad0d3a787d4d42 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/719181653" 
	@${RM} ${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d 
	@${RM} ${OBJECTDIR}/_ext/719181653/plib_hsmci.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d" -o ${OBJECTDIR}/_ext/719181653/plib_hsmci.o ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1639550079/plib_nvic.o: ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e70_xult/44bc6c25b79ed0fc838446a44a048c08e1f433dc .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1639550079" 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055488423/plib_pio.o: ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c  .generated_files/flags/sam_e70_xult/b9e170bb7381bf60e4c5333cc2cb0deefceeca8c .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1055488423" 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055488423/plib_pio.o.d" -o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055487991/plib_pwm0.o: ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c  .generated_files/flags/sam_e70_xult/60fbd32444ff657ff8e9c81700211bac38879abf .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1055487991" 
	@${RM} ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/865331892/plib_tc3.o: ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c  .generated_files/flags/sam_e70_xult/eedeeba0a69f160ecaa923cb3c4b1222d7c81880 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/865331892" 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/865331892/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/865331892/plib_tc3.o ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o: ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/flags/sam_e70_xult/70ff2ed8b35c27fae5afa56ff8e448d7a384c83e .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1539215101" 
	@${RM} ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart1.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c  .generated_files/flags/sam_e70_xult/d2c866967a76b9e0fb480334b3021592c44fd0cc .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart0.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c  .generated_files/flags/sam_e70_xult/17334416c1f6e0c7f54e3e5a6f3d9cefade5caca .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart0.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart2.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c  .generated_files/flags/sam_e70_xult/8215b6550a998834b3b3500cd3f05b7978df1839 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart2.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart2.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/704852250/plib_xdmac.o: ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c  .generated_files/flags/sam_e70_xult/960dcc58c2a31633f2f210e42673148a2aaaf4a3 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/704852250" 
	@${RM} ${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/704852250/plib_xdmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d" -o ${OBJECTDIR}/_ext/704852250/plib_xdmac.o ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1518761459/xc32_monitor.o: ../src/config/sam_e70_xult/stdio/xc32_monitor.c  .generated_files/flags/sam_e70_xult/4b9773f63b040bee3b85201d3fcba4dae8399f49 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1518761459" 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ../src/config/sam_e70_xult/stdio/xc32_monitor.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/876653320/sys_cache.o: ../src/config/sam_e70_xult/system/cache/sys_cache.c  .generated_files/flags/sam_e70_xult/9281be0c6916b5c6593c007ed1171aa4ba8700a .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/876653320" 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/876653320/sys_cache.o.d" -o ${OBJECTDIR}/_ext/876653320/sys_cache.o ../src/config/sam_e70_xult/system/cache/sys_cache.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/984150034/sys_dma.o: ../src/config/sam_e70_xult/system/dma/sys_dma.c  .generated_files/flags/sam_e70_xult/a3c8c517cd2897fdf176743ba9ae41110bfdb166 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/984150034" 
	@${RM} ${OBJECTDIR}/_ext/984150034/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/984150034/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/984150034/sys_dma.o.d" -o ${OBJECTDIR}/_ext/984150034/sys_dma.o ../src/config/sam_e70_xult/system/dma/sys_dma.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1043829778/ff.o: ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/sam_e70_xult/6125bf199f600227d412fc65db5a9315a036e3b6 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1043829778" 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1043829778/ff.o.d" -o ${OBJECTDIR}/_ext/1043829778/ff.o ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1043829778/ffunicode.o: ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/sam_e70_xult/24aba59ecbe0d1dc5252c1bd6431bd49867b25ee .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1043829778" 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1043829778/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1043829778/ffunicode.o ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1893760823/diskio.o: ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/sam_e70_xult/b701cae3ddc080a50abf7de1a03fa5cb7d368f69 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1893760823" 
	@${RM} ${OBJECTDIR}/_ext/1893760823/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1893760823/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1893760823/diskio.o.d" -o ${OBJECTDIR}/_ext/1893760823/diskio.o ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs.c  .generated_files/flags/sam_e70_xult/43968892733eb2da1ef912d35861b099562d7c0e .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs.o ../src/config/sam_e70_xult/system/fs/src/sys_fs.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/sam_e70_xult/e2f1a2db9d9828c24b607782b9e1163b3a52e2b9 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/sam_e70_xult/75c68f412e42fde18bc183b9e2b6db80ffbb50a4 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/766002106/sys_int.o: ../src/config/sam_e70_xult/system/int/src/sys_int.c  .generated_files/flags/sam_e70_xult/a00e17f892c8a3cfae8a4db332fffb127d53a4ef .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/766002106" 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/766002106/sys_int.o.d" -o ${OBJECTDIR}/_ext/766002106/sys_int.o ../src/config/sam_e70_xult/system/int/src/sys_int.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/327803284/sys_time.o: ../src/config/sam_e70_xult/system/time/src/sys_time.c  .generated_files/flags/sam_e70_xult/5047b40bc24c690959a4cb41c2501f6848c040db .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/327803284" 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327803284/sys_time.o.d" -o ${OBJECTDIR}/_ext/327803284/sys_time.o ../src/config/sam_e70_xult/system/time/src/sys_time.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/initialization.o: ../src/config/sam_e70_xult/initialization.c  .generated_files/flags/sam_e70_xult/d0de37671f5888138d249759963c30f170a1121 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/initialization.o.d" -o ${OBJECTDIR}/_ext/1728594169/initialization.o ../src/config/sam_e70_xult/initialization.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/interrupts.o: ../src/config/sam_e70_xult/interrupts.c  .generated_files/flags/sam_e70_xult/9491f4a5c48b7e662b6391c7eca5060d26783c7c .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/interrupts.o.d" -o ${OBJECTDIR}/_ext/1728594169/interrupts.o ../src/config/sam_e70_xult/interrupts.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/exceptions.o: ../src/config/sam_e70_xult/exceptions.c  .generated_files/flags/sam_e70_xult/eef5ddff07ccf2e90f3d1230e1f0fd856fb42012 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/exceptions.o.d" -o ${OBJECTDIR}/_ext/1728594169/exceptions.o ../src/config/sam_e70_xult/exceptions.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/startup_xc32.o: ../src/config/sam_e70_xult/startup_xc32.c  .generated_files/flags/sam_e70_xult/4ad6043503e9c711599be6509e75692ba5eceb18 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ../src/config/sam_e70_xult/startup_xc32.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/libc_syscalls.o: ../src/config/sam_e70_xult/libc_syscalls.c  .generated_files/flags/sam_e70_xult/945adb56a4610b386f7062ec0a723c102b94ad90 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ../src/config/sam_e70_xult/libc_syscalls.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/freertos_hooks.o: ../src/config/sam_e70_xult/freertos_hooks.c  .generated_files/flags/sam_e70_xult/1d13f57c9fe8bc7c84d2e140706c1e38fe51b969 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o ../src/config/sam_e70_xult/freertos_hooks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/tasks.o: ../src/config/sam_e70_xult/tasks.c  .generated_files/flags/sam_e70_xult/c5abd0503cb16cc535cd9570b609efa29d750272 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/tasks.o.d" -o ${OBJECTDIR}/_ext/1728594169/tasks.o ../src/config/sam_e70_xult/tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/977623654/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c  .generated_files/flags/sam_e70_xult/bbe0608c8f2d0098e983f500a6fed909d1e9a6bb .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/977623654" 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977623654/port.o.d" -o ${OBJECTDIR}/_ext/977623654/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/sam_e70_xult/6b4fce7a8715ce6d2393b110cceb952a855a33c7 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/sam_e70_xult/e202aa24fb09f9d8a18e4163d4421431c65f95d5 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/sam_e70_xult/888d5833298053fa8761968ed62842c5b5afa1e4 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/sam_e70_xult/cadbefc7446a3808ba4781240963b7527787a42c .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/sam_e70_xult/703cf178d9862b9a6e1914afbe8ebc9ca243db84 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/sam_e70_xult/9092e885c333fcaa5b0cd3d003675a3b0ea7257a .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/sam_e70_xult/aefb6e5decf86fda1bd6eac21760a957bd525cff .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/sam_e70_xult/99f8b0b3e50a283dc29afb99fc28154ffa02ac55 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_e70_xult/6a33e0a26e4526a3a112e62f1efb5d6b5f34e295 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_communication.o: ../src/app_communication.c  .generated_files/flags/sam_e70_xult/f1dae8ab485ab551ab273d05e75dd43faf255be5 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_communication.o ../src/app_communication.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_mast_control.o: ../src/app_mast_control.c  .generated_files/flags/sam_e70_xult/6b02f43bb976b69419eabf44b650020e5a6f9600 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mast_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_mast_control.o ../src/app_mast_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o: ../src/app_course_algorithm.c  .generated_files/flags/sam_e70_xult/1ae920ed2eb633586aa424b5961f03082f48f237 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o ../src/app_course_algorithm.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_rudder_control.o: ../src/app_rudder_control.c  .generated_files/flags/sam_e70_xult/629b2cd152dffd15e3a10d88dcf2d5d772b66ba .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o ../src/app_rudder_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_anemometer.o: ../src/app_anemometer.c  .generated_files/flags/sam_e70_xult/74f1e6e1cdb10fcab0e3a278d5efa4effc15acb1 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_anemometer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_anemometer.o ../src/app_anemometer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_gps.o: ../src/app_gps.c  .generated_files/flags/sam_e70_xult/a75c4a5034d28fdccda301d52ecbf2f9a37f7c55 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_gps.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_gps.o ../src/app_gps.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_imu.o: ../src/app_imu.c  .generated_files/flags/sam_e70_xult/5425c9c051b4caa361b3ebef9f0cf38cb056b1a2 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_imu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_imu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_imu.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_imu.o ../src/app_imu.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/957281314/drv_i2c.o: ../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c  .generated_files/flags/sam_e70_xult/83a5a3bbe63bdf23972ac6b789f08f7bb7b84904 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/957281314" 
	@${RM} ${OBJECTDIR}/_ext/957281314/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/957281314/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957281314/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/957281314/drv_i2c.o ../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o: ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c  .generated_files/flags/sam_e70_xult/1d56f3cff97dbec5be9a9460b5864a96c184c9fa .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1565510230" 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d" -o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o: ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c  .generated_files/flags/sam_e70_xult/83ca881a3e7c8e303b225fc5ffeb5cf91c23fea0 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1565510230" 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d" -o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/716655881/drv_usart.o: ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c  .generated_files/flags/sam_e70_xult/698574c82cab61a55b371a630d552b0de9876f27 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/716655881" 
	@${RM} ${OBJECTDIR}/_ext/716655881/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/716655881/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/716655881/drv_usart.o.d" -o ${OBJECTDIR}/_ext/716655881/drv_usart.o ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1613695899/osal_freertos.o: ../src/config/sam_e70_xult/osal/osal_freertos.c  .generated_files/flags/sam_e70_xult/2ea27919e7a5c414fde1d0b209b77891a78f954 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1613695899" 
	@${RM} ${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613695899/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1613695899/osal_freertos.o ../src/config/sam_e70_xult/osal/osal_freertos.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055500827/plib_clk.o: ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c  .generated_files/flags/sam_e70_xult/d0489ea2d455aca1ec227b8324b94c61c0ff945b .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1055500827" 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055500827/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055499099/plib_efc.o: ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c  .generated_files/flags/sam_e70_xult/cfd2ec6f920a0fc99cbbf5cf3996d3b64734ffd4 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1055499099" 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055499099/plib_efc.o.d" -o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/719181653/plib_hsmci.o: ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c  .generated_files/flags/sam_e70_xult/cacbe5da867140c0488645e3353d9cba7da9d4f5 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/719181653" 
	@${RM} ${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d 
	@${RM} ${OBJECTDIR}/_ext/719181653/plib_hsmci.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d" -o ${OBJECTDIR}/_ext/719181653/plib_hsmci.o ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1639550079/plib_nvic.o: ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e70_xult/6ebc894ee31a07a7a121f71ce4d45ba82360fde2 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1639550079" 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055488423/plib_pio.o: ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c  .generated_files/flags/sam_e70_xult/e921bac97c2b7e36b2195ecbdb64349ae9eeaae3 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1055488423" 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055488423/plib_pio.o.d" -o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055487991/plib_pwm0.o: ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c  .generated_files/flags/sam_e70_xult/ed0360ac0f149c803acf5b7d17528c945e20a93b .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1055487991" 
	@${RM} ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/865331892/plib_tc3.o: ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c  .generated_files/flags/sam_e70_xult/1bf2094e8f1d3125a45a671f1db7ebb44ab3bef .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/865331892" 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/865331892/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/865331892/plib_tc3.o ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o: ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/flags/sam_e70_xult/cfa6411aeec4625ddae58d21d7ee15a47ef52d73 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1539215101" 
	@${RM} ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart1.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c  .generated_files/flags/sam_e70_xult/8431d2736299751415b2ac2fc8a98c76f9a21ec9 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart0.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c  .generated_files/flags/sam_e70_xult/69d68d97408c691108226b9877a3e3635beb48ad .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart0.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart2.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c  .generated_files/flags/sam_e70_xult/d7a976ae2e68446925d17ff28e30ad62a658c5ba .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart2.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart2.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/704852250/plib_xdmac.o: ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c  .generated_files/flags/sam_e70_xult/c8b3b7282f5a43b4053dc6e6bd17698aed23f9c3 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/704852250" 
	@${RM} ${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/704852250/plib_xdmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d" -o ${OBJECTDIR}/_ext/704852250/plib_xdmac.o ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1518761459/xc32_monitor.o: ../src/config/sam_e70_xult/stdio/xc32_monitor.c  .generated_files/flags/sam_e70_xult/a10d90428f2d74f756ffe905cad0dae682588848 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1518761459" 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ../src/config/sam_e70_xult/stdio/xc32_monitor.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/876653320/sys_cache.o: ../src/config/sam_e70_xult/system/cache/sys_cache.c  .generated_files/flags/sam_e70_xult/e89a3c60249fac1117823d7c1c2c56bc80fb6047 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/876653320" 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/876653320/sys_cache.o.d" -o ${OBJECTDIR}/_ext/876653320/sys_cache.o ../src/config/sam_e70_xult/system/cache/sys_cache.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/984150034/sys_dma.o: ../src/config/sam_e70_xult/system/dma/sys_dma.c  .generated_files/flags/sam_e70_xult/49800171f9b2366b5257ac0dc0517cfec4d71b67 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/984150034" 
	@${RM} ${OBJECTDIR}/_ext/984150034/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/984150034/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/984150034/sys_dma.o.d" -o ${OBJECTDIR}/_ext/984150034/sys_dma.o ../src/config/sam_e70_xult/system/dma/sys_dma.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1043829778/ff.o: ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/sam_e70_xult/c428d841dbca8466672a36a8298ff5dfd54caecc .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1043829778" 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1043829778/ff.o.d" -o ${OBJECTDIR}/_ext/1043829778/ff.o ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1043829778/ffunicode.o: ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/sam_e70_xult/43fc2da1b8565b0e1f3e1488eef9c91ba9e26e06 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1043829778" 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1043829778/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1043829778/ffunicode.o ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1893760823/diskio.o: ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/sam_e70_xult/5abd4eadd87c15400393b45c39ee9955e83ec45a .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1893760823" 
	@${RM} ${OBJECTDIR}/_ext/1893760823/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1893760823/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1893760823/diskio.o.d" -o ${OBJECTDIR}/_ext/1893760823/diskio.o ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs.c  .generated_files/flags/sam_e70_xult/d7b490168e40444fd49991e04acefe168be11ec1 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs.o ../src/config/sam_e70_xult/system/fs/src/sys_fs.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/sam_e70_xult/a259b3edd30a0f33893f63cd048dcb45c72efe5b .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/sam_e70_xult/728e84bcbdc0c7f71d799f5ef25bb4fe1ec8c07d .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/766002106/sys_int.o: ../src/config/sam_e70_xult/system/int/src/sys_int.c  .generated_files/flags/sam_e70_xult/d0480ae2a197cfd069d0e0babce07e47e5fc8cfb .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/766002106" 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/766002106/sys_int.o.d" -o ${OBJECTDIR}/_ext/766002106/sys_int.o ../src/config/sam_e70_xult/system/int/src/sys_int.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/327803284/sys_time.o: ../src/config/sam_e70_xult/system/time/src/sys_time.c  .generated_files/flags/sam_e70_xult/7aa86e9abbcb5573d2888799e6690b38e9761451 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/327803284" 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327803284/sys_time.o.d" -o ${OBJECTDIR}/_ext/327803284/sys_time.o ../src/config/sam_e70_xult/system/time/src/sys_time.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/initialization.o: ../src/config/sam_e70_xult/initialization.c  .generated_files/flags/sam_e70_xult/87e8bf1538bbeadf4667585397912199b508ffd0 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/initialization.o.d" -o ${OBJECTDIR}/_ext/1728594169/initialization.o ../src/config/sam_e70_xult/initialization.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/interrupts.o: ../src/config/sam_e70_xult/interrupts.c  .generated_files/flags/sam_e70_xult/93f29b0f45e84f430aac3a4179ab5c2d5699603 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/interrupts.o.d" -o ${OBJECTDIR}/_ext/1728594169/interrupts.o ../src/config/sam_e70_xult/interrupts.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/exceptions.o: ../src/config/sam_e70_xult/exceptions.c  .generated_files/flags/sam_e70_xult/fde877fbf1daa800149db75cd6fdd9005aa250f3 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/exceptions.o.d" -o ${OBJECTDIR}/_ext/1728594169/exceptions.o ../src/config/sam_e70_xult/exceptions.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/startup_xc32.o: ../src/config/sam_e70_xult/startup_xc32.c  .generated_files/flags/sam_e70_xult/12c339cc9b29cf5e6d31e54f0c5767fcc3a2ce7b .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ../src/config/sam_e70_xult/startup_xc32.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/libc_syscalls.o: ../src/config/sam_e70_xult/libc_syscalls.c  .generated_files/flags/sam_e70_xult/cdfe3e20f622190a74e7c35811ec47d032d51760 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ../src/config/sam_e70_xult/libc_syscalls.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/freertos_hooks.o: ../src/config/sam_e70_xult/freertos_hooks.c  .generated_files/flags/sam_e70_xult/203b505faaf0f1a4e5478d3663cf650d1b69ee7a .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o ../src/config/sam_e70_xult/freertos_hooks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/tasks.o: ../src/config/sam_e70_xult/tasks.c  .generated_files/flags/sam_e70_xult/1f30a02288ed969ebee92bc570c907531114f456 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/tasks.o.d" -o ${OBJECTDIR}/_ext/1728594169/tasks.o ../src/config/sam_e70_xult/tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/977623654/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c  .generated_files/flags/sam_e70_xult/59b3dbf0a0c744de49c96fe1ff8574ca8565f1d7 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/977623654" 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977623654/port.o.d" -o ${OBJECTDIR}/_ext/977623654/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/sam_e70_xult/aea845df62efb6a7d242b7dc53a3de11c2db3579 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/sam_e70_xult/6597e6eddacdedc7b115afd9c583d53cd1d20962 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/sam_e70_xult/86ce2446b34a0a6a0e6f03bafb8077ccc12eb826 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/sam_e70_xult/e36d69e4e9185e0432ff85f53322d9d4e4d76f96 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/sam_e70_xult/3970fec692892f6e61f87f3edddc1a66f23b4155 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/sam_e70_xult/5ff8c80b2b380f15a782fa2c81b0abc843b533ed .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/sam_e70_xult/9ae37ac052ee041ce5ed523691d6019738899c68 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/sam_e70_xult/15662c1be47a6a6820d3139501b0daf7b2382022 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_e70_xult/2a0e1ecc59efd09dec0ce325d8d0000585bc7efa .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_communication.o: ../src/app_communication.c  .generated_files/flags/sam_e70_xult/ebcb3c1eb649a2948d675ba078e07cb59799becb .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_communication.o ../src/app_communication.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_mast_control.o: ../src/app_mast_control.c  .generated_files/flags/sam_e70_xult/bc633d6583c1f3dd616267ee5b5eabafa1f7c725 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mast_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_mast_control.o ../src/app_mast_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o: ../src/app_course_algorithm.c  .generated_files/flags/sam_e70_xult/10d3ce7a0920f3565cf48b809d222a37598cbb5f .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o ../src/app_course_algorithm.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_rudder_control.o: ../src/app_rudder_control.c  .generated_files/flags/sam_e70_xult/1545e5d61674f5205a629b681c00cc0326aa3234 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o ../src/app_rudder_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_anemometer.o: ../src/app_anemometer.c  .generated_files/flags/sam_e70_xult/6385d2cea3a0dc8d18067560769a566be60587f9 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_anemometer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_anemometer.o ../src/app_anemometer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_gps.o: ../src/app_gps.c  .generated_files/flags/sam_e70_xult/89afcde683ed5ea39b5a811b045df57f8b333d62 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_gps.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_gps.o ../src/app_gps.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_imu.o: ../src/app_imu.c  .generated_files/flags/sam_e70_xult/45611b8af39c46517cb3570eb47ab332afb04372 .generated_files/flags/sam_e70_xult/78fcd03daf87009c31f9a29375ea20f1655ee1fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_imu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_imu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_imu.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_imu.o ../src/app_imu.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/SailBoatProgram.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_e70_xult/ATSAME70Q21B.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/SailBoatProgram.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/same70b"
	
else
${DISTDIR}/SailBoatProgram.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_e70_xult/ATSAME70Q21B.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/SailBoatProgram.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/same70b"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/SailBoatProgram.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
