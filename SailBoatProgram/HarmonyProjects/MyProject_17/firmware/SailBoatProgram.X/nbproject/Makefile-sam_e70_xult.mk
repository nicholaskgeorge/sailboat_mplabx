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
${OBJECTDIR}/_ext/957281314/drv_i2c.o: ../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c  .generated_files/flags/sam_e70_xult/861a86bc7d15b407673977689bd5fcbe2b7f8699 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/957281314" 
	@${RM} ${OBJECTDIR}/_ext/957281314/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/957281314/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957281314/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/957281314/drv_i2c.o ../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o: ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c  .generated_files/flags/sam_e70_xult/6be792ac209f22607d0e2baa8d38ff5cc93f451a .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1565510230" 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d" -o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o: ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c  .generated_files/flags/sam_e70_xult/1a1f81e174ece72b2d2daf049827bf502fe26f74 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1565510230" 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d" -o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/716655881/drv_usart.o: ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c  .generated_files/flags/sam_e70_xult/9fb1c411e5a6d17ba939945cf40eb276e08b024 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/716655881" 
	@${RM} ${OBJECTDIR}/_ext/716655881/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/716655881/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/716655881/drv_usart.o.d" -o ${OBJECTDIR}/_ext/716655881/drv_usart.o ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1613695899/osal_freertos.o: ../src/config/sam_e70_xult/osal/osal_freertos.c  .generated_files/flags/sam_e70_xult/c0c5395d7dab28f11db04344bc7d4abf32363eef .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1613695899" 
	@${RM} ${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613695899/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1613695899/osal_freertos.o ../src/config/sam_e70_xult/osal/osal_freertos.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055500827/plib_clk.o: ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c  .generated_files/flags/sam_e70_xult/bf83c31f7644ee41e3049823779c772795672261 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1055500827" 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055500827/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055499099/plib_efc.o: ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c  .generated_files/flags/sam_e70_xult/bd50347ac6a6a6dfc4d536f3eac04e3937160b84 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1055499099" 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055499099/plib_efc.o.d" -o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/719181653/plib_hsmci.o: ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c  .generated_files/flags/sam_e70_xult/5a4d8aa1b42c602e57777242c3f3c054a4d716b4 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/719181653" 
	@${RM} ${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d 
	@${RM} ${OBJECTDIR}/_ext/719181653/plib_hsmci.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d" -o ${OBJECTDIR}/_ext/719181653/plib_hsmci.o ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1639550079/plib_nvic.o: ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e70_xult/a8191e9531f716b5f97ce3108f00041e5b9deff .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1639550079" 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055488423/plib_pio.o: ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c  .generated_files/flags/sam_e70_xult/ada2be42452a338a579287ca68944dcd13ff001a .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1055488423" 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055488423/plib_pio.o.d" -o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055487991/plib_pwm0.o: ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c  .generated_files/flags/sam_e70_xult/f617a9372c344473a4fc0d0f2abd4718cdfa8a4f .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1055487991" 
	@${RM} ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/865331892/plib_tc3.o: ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c  .generated_files/flags/sam_e70_xult/37ee33c0cb05efef3a5dfca7a1e0ddb20141e017 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/865331892" 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/865331892/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/865331892/plib_tc3.o ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o: ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/flags/sam_e70_xult/a84e593a271ad486ff1eedf5f2892ce543d5f6be .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1539215101" 
	@${RM} ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart1.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c  .generated_files/flags/sam_e70_xult/44e9df41f7e2724a8379f4f26e372401ece17c4a .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart0.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c  .generated_files/flags/sam_e70_xult/c12ad7c389f11f91cc3d22eae69866011f7e0473 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart0.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart2.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c  .generated_files/flags/sam_e70_xult/2af63099c0061278f1007e33f8b27b17fc6e5bdf .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart2.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart2.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/704852250/plib_xdmac.o: ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c  .generated_files/flags/sam_e70_xult/c4f3ef8099cc6ed313e4789b3ec5ae5ccd5f98b9 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/704852250" 
	@${RM} ${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/704852250/plib_xdmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d" -o ${OBJECTDIR}/_ext/704852250/plib_xdmac.o ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1518761459/xc32_monitor.o: ../src/config/sam_e70_xult/stdio/xc32_monitor.c  .generated_files/flags/sam_e70_xult/ac6b2ef963dedcc658a9962feff848b980aa88e3 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1518761459" 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ../src/config/sam_e70_xult/stdio/xc32_monitor.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/876653320/sys_cache.o: ../src/config/sam_e70_xult/system/cache/sys_cache.c  .generated_files/flags/sam_e70_xult/4f10fa490618d7948e845034fcf7365b897ff803 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/876653320" 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/876653320/sys_cache.o.d" -o ${OBJECTDIR}/_ext/876653320/sys_cache.o ../src/config/sam_e70_xult/system/cache/sys_cache.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/984150034/sys_dma.o: ../src/config/sam_e70_xult/system/dma/sys_dma.c  .generated_files/flags/sam_e70_xult/6d06dea614298e6cf758824de7a0e09f3a023f03 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/984150034" 
	@${RM} ${OBJECTDIR}/_ext/984150034/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/984150034/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/984150034/sys_dma.o.d" -o ${OBJECTDIR}/_ext/984150034/sys_dma.o ../src/config/sam_e70_xult/system/dma/sys_dma.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1043829778/ff.o: ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/sam_e70_xult/1998c4bd80190baa1f85b6bb44dc679d5766e4f8 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1043829778" 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1043829778/ff.o.d" -o ${OBJECTDIR}/_ext/1043829778/ff.o ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1043829778/ffunicode.o: ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/sam_e70_xult/40a0fd5297f596086f7bc4fa81c14a45b0006401 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1043829778" 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1043829778/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1043829778/ffunicode.o ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1893760823/diskio.o: ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/sam_e70_xult/2383e7d63f743e87398d8407f37c63d14f38ec46 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1893760823" 
	@${RM} ${OBJECTDIR}/_ext/1893760823/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1893760823/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1893760823/diskio.o.d" -o ${OBJECTDIR}/_ext/1893760823/diskio.o ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs.c  .generated_files/flags/sam_e70_xult/c7b9850475cdc7fa39039eb21ad5052bc75f3f5d .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs.o ../src/config/sam_e70_xult/system/fs/src/sys_fs.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/sam_e70_xult/f5b6c886d11ff9d134c7af94936666cd3a7b02d9 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/sam_e70_xult/2c843664e82b00ed5797e36d31aded79b16f3f65 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/766002106/sys_int.o: ../src/config/sam_e70_xult/system/int/src/sys_int.c  .generated_files/flags/sam_e70_xult/29c860ceb9471d2ef88c7f046b3a85fdcd47f927 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/766002106" 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/766002106/sys_int.o.d" -o ${OBJECTDIR}/_ext/766002106/sys_int.o ../src/config/sam_e70_xult/system/int/src/sys_int.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/327803284/sys_time.o: ../src/config/sam_e70_xult/system/time/src/sys_time.c  .generated_files/flags/sam_e70_xult/f6e848c3261bcc8510a2260b060ba84bc9f9e106 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/327803284" 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327803284/sys_time.o.d" -o ${OBJECTDIR}/_ext/327803284/sys_time.o ../src/config/sam_e70_xult/system/time/src/sys_time.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/initialization.o: ../src/config/sam_e70_xult/initialization.c  .generated_files/flags/sam_e70_xult/fde0e596cd5645c3c078f16d293c9e03278832f3 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/initialization.o.d" -o ${OBJECTDIR}/_ext/1728594169/initialization.o ../src/config/sam_e70_xult/initialization.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/interrupts.o: ../src/config/sam_e70_xult/interrupts.c  .generated_files/flags/sam_e70_xult/727f77094a04adaf62c8281ededf5011ecd25905 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/interrupts.o.d" -o ${OBJECTDIR}/_ext/1728594169/interrupts.o ../src/config/sam_e70_xult/interrupts.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/exceptions.o: ../src/config/sam_e70_xult/exceptions.c  .generated_files/flags/sam_e70_xult/581eacdeaa1147a23d11db79b04d3d10528b5439 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/exceptions.o.d" -o ${OBJECTDIR}/_ext/1728594169/exceptions.o ../src/config/sam_e70_xult/exceptions.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/startup_xc32.o: ../src/config/sam_e70_xult/startup_xc32.c  .generated_files/flags/sam_e70_xult/c5ef8905c85e7dd59458875b4c25cba4500b1bec .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ../src/config/sam_e70_xult/startup_xc32.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/libc_syscalls.o: ../src/config/sam_e70_xult/libc_syscalls.c  .generated_files/flags/sam_e70_xult/b8761c68310265ab2fb4872456ce6fad81974a9d .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ../src/config/sam_e70_xult/libc_syscalls.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/freertos_hooks.o: ../src/config/sam_e70_xult/freertos_hooks.c  .generated_files/flags/sam_e70_xult/890224e4741f7e255f1aba1b0b7dbcb4671ea38f .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o ../src/config/sam_e70_xult/freertos_hooks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/tasks.o: ../src/config/sam_e70_xult/tasks.c  .generated_files/flags/sam_e70_xult/77e47f76e05b8a7fd068799fcad089cfd55f628 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/tasks.o.d" -o ${OBJECTDIR}/_ext/1728594169/tasks.o ../src/config/sam_e70_xult/tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/977623654/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c  .generated_files/flags/sam_e70_xult/8b5d9de84fd8aaa20320b23f95af9c8da7c75311 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/977623654" 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977623654/port.o.d" -o ${OBJECTDIR}/_ext/977623654/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/sam_e70_xult/f923a28979b3bc2aadd940f54c0641b698b4013 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/sam_e70_xult/d751107aea6c02caca0b6899576a59a6371e6c1d .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/sam_e70_xult/2df3714ba1a76404a6797d3460ce6176dcd71170 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/sam_e70_xult/eede8b93895b402eaf0584f263d23c95f2f7eca7 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/sam_e70_xult/42ef343bbc7cc6759cc292869cbd8a263ed504ad .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/sam_e70_xult/bb9525692e3c19014cd19d035d77faa15ef297f3 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/sam_e70_xult/9d58c8010ad3263635fb769d22e2507f9aaee2a .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/sam_e70_xult/aa23d56d54c87e364f2546f359720a60312debda .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_e70_xult/f31616f0788803e5bde38cfa637a6c551c1dd55d .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_communication.o: ../src/app_communication.c  .generated_files/flags/sam_e70_xult/4661ba1b248d9dba5662dd3c33708fc8a2b8f52e .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_communication.o ../src/app_communication.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_mast_control.o: ../src/app_mast_control.c  .generated_files/flags/sam_e70_xult/bbfe8b472a4e5686695c2476e1cf9aa7f91b3d0f .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mast_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_mast_control.o ../src/app_mast_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o: ../src/app_course_algorithm.c  .generated_files/flags/sam_e70_xult/eda8500de2b06dd7f2bd5dc1341bccd5a04c411d .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o ../src/app_course_algorithm.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_rudder_control.o: ../src/app_rudder_control.c  .generated_files/flags/sam_e70_xult/6ca2cd3385ad77d1955a33616a9a4e0546976a38 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o ../src/app_rudder_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_anemometer.o: ../src/app_anemometer.c  .generated_files/flags/sam_e70_xult/4d2f5c2f3c248df90a42dff908ac8974c6aa92c2 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_anemometer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_anemometer.o ../src/app_anemometer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_gps.o: ../src/app_gps.c  .generated_files/flags/sam_e70_xult/4ead425a761821b6409242a7147873278573d3da .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_gps.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_gps.o ../src/app_gps.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_imu.o: ../src/app_imu.c  .generated_files/flags/sam_e70_xult/b66ebf4696fd01fa246ec83158043e515baf2a5f .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_imu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_imu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_imu.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_imu.o ../src/app_imu.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/957281314/drv_i2c.o: ../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c  .generated_files/flags/sam_e70_xult/3e2dac94927d133e41d4e86b9ede00d9bfa6cfe3 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/957281314" 
	@${RM} ${OBJECTDIR}/_ext/957281314/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/957281314/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957281314/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/957281314/drv_i2c.o ../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o: ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c  .generated_files/flags/sam_e70_xult/da7b71aab1eda12b0d3c91d9720c9453ba18d941 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1565510230" 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d" -o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o: ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c  .generated_files/flags/sam_e70_xult/3a924b00ea4a9f9a44ca6254358c717955967ea .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1565510230" 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d" -o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/716655881/drv_usart.o: ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c  .generated_files/flags/sam_e70_xult/184a2eac6cbb05aa95920dbdb4c1f8d6acb3a738 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/716655881" 
	@${RM} ${OBJECTDIR}/_ext/716655881/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/716655881/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/716655881/drv_usart.o.d" -o ${OBJECTDIR}/_ext/716655881/drv_usart.o ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1613695899/osal_freertos.o: ../src/config/sam_e70_xult/osal/osal_freertos.c  .generated_files/flags/sam_e70_xult/f37752302a9f0cb576cfec6a96a0ba317ad366de .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1613695899" 
	@${RM} ${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613695899/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1613695899/osal_freertos.o ../src/config/sam_e70_xult/osal/osal_freertos.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055500827/plib_clk.o: ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c  .generated_files/flags/sam_e70_xult/52aa432689d2eb706b5fcb97e80b5763b3cbe414 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1055500827" 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055500827/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055499099/plib_efc.o: ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c  .generated_files/flags/sam_e70_xult/cba23f67ff2c86721dacbed4f6a322259364e1e2 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1055499099" 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055499099/plib_efc.o.d" -o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/719181653/plib_hsmci.o: ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c  .generated_files/flags/sam_e70_xult/9fa51b183e84878757a60c2586dd67d7cb744fcd .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/719181653" 
	@${RM} ${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d 
	@${RM} ${OBJECTDIR}/_ext/719181653/plib_hsmci.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d" -o ${OBJECTDIR}/_ext/719181653/plib_hsmci.o ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1639550079/plib_nvic.o: ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_e70_xult/9febb588240d9ec8ffcea6299eda68e218b4e7a9 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1639550079" 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055488423/plib_pio.o: ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c  .generated_files/flags/sam_e70_xult/87cddff5803e94202ec7b916f29339f7409140c5 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1055488423" 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055488423/plib_pio.o.d" -o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055487991/plib_pwm0.o: ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c  .generated_files/flags/sam_e70_xult/b9719148292324d00dde1a318d1c998c33facfe0 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1055487991" 
	@${RM} ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/865331892/plib_tc3.o: ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c  .generated_files/flags/sam_e70_xult/2d5dee7a705fe04e4c9df0010b13a6f74253638d .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/865331892" 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/865331892/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/865331892/plib_tc3.o ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o: ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/flags/sam_e70_xult/9a00b5b3942f5e1292fe31113e7c1079d84e34d8 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1539215101" 
	@${RM} ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart1.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c  .generated_files/flags/sam_e70_xult/6ee73d36f0c3f92b069a9582cc6b72d2ffdcae99 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart0.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c  .generated_files/flags/sam_e70_xult/2d39a58dc3902cccf8c11aa758c9339bcafabc44 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart0.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart2.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c  .generated_files/flags/sam_e70_xult/3c047b42ab79195477249ae12aeede081a9dff4b .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart2.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart2.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/704852250/plib_xdmac.o: ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c  .generated_files/flags/sam_e70_xult/10376e928fd2c1f45b74a22e7e3ad0c86e4d77d4 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/704852250" 
	@${RM} ${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/704852250/plib_xdmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d" -o ${OBJECTDIR}/_ext/704852250/plib_xdmac.o ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1518761459/xc32_monitor.o: ../src/config/sam_e70_xult/stdio/xc32_monitor.c  .generated_files/flags/sam_e70_xult/18b8cd46531db06a9644c299be76bb89d34a736c .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1518761459" 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ../src/config/sam_e70_xult/stdio/xc32_monitor.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/876653320/sys_cache.o: ../src/config/sam_e70_xult/system/cache/sys_cache.c  .generated_files/flags/sam_e70_xult/7fdbcb00605ff6a417d8a9d9a2cbde42d96df2fb .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/876653320" 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/876653320/sys_cache.o.d" -o ${OBJECTDIR}/_ext/876653320/sys_cache.o ../src/config/sam_e70_xult/system/cache/sys_cache.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/984150034/sys_dma.o: ../src/config/sam_e70_xult/system/dma/sys_dma.c  .generated_files/flags/sam_e70_xult/7ce6dd14e370cdb09278987c5464f50e8f94a1a8 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/984150034" 
	@${RM} ${OBJECTDIR}/_ext/984150034/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/984150034/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/984150034/sys_dma.o.d" -o ${OBJECTDIR}/_ext/984150034/sys_dma.o ../src/config/sam_e70_xult/system/dma/sys_dma.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1043829778/ff.o: ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/sam_e70_xult/cdca432a599f911ede68626c4ab16e2220300d05 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1043829778" 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1043829778/ff.o.d" -o ${OBJECTDIR}/_ext/1043829778/ff.o ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1043829778/ffunicode.o: ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/sam_e70_xult/d2d83b5e597543afbefba75fd118414a2ad04ca8 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1043829778" 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1043829778/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1043829778/ffunicode.o ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1893760823/diskio.o: ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/sam_e70_xult/1ab51ed6e9fe985ee9e38dd9edd403a9020335db .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1893760823" 
	@${RM} ${OBJECTDIR}/_ext/1893760823/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1893760823/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1893760823/diskio.o.d" -o ${OBJECTDIR}/_ext/1893760823/diskio.o ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs.c  .generated_files/flags/sam_e70_xult/89ee212a45888d63563c70709dfae4edb4d7dd23 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs.o ../src/config/sam_e70_xult/system/fs/src/sys_fs.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/sam_e70_xult/9da535b3d7b996cb108705e2f0ac42f04a5f0cdd .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/sam_e70_xult/604c0b8d3f633cc6c35ef2b7345fc47883150e36 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/766002106/sys_int.o: ../src/config/sam_e70_xult/system/int/src/sys_int.c  .generated_files/flags/sam_e70_xult/f4c13b8cd24c5346b5fa72bd95937491c36724fd .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/766002106" 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/766002106/sys_int.o.d" -o ${OBJECTDIR}/_ext/766002106/sys_int.o ../src/config/sam_e70_xult/system/int/src/sys_int.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/327803284/sys_time.o: ../src/config/sam_e70_xult/system/time/src/sys_time.c  .generated_files/flags/sam_e70_xult/a631127dc0af92c55533e33345812faddc7998c0 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/327803284" 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327803284/sys_time.o.d" -o ${OBJECTDIR}/_ext/327803284/sys_time.o ../src/config/sam_e70_xult/system/time/src/sys_time.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/initialization.o: ../src/config/sam_e70_xult/initialization.c  .generated_files/flags/sam_e70_xult/6bdde45ec0ea9e133015e96ca5e55d17971cd427 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/initialization.o.d" -o ${OBJECTDIR}/_ext/1728594169/initialization.o ../src/config/sam_e70_xult/initialization.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/interrupts.o: ../src/config/sam_e70_xult/interrupts.c  .generated_files/flags/sam_e70_xult/b0c942b88604d1e49465273ba8d74ac953cdd4b8 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/interrupts.o.d" -o ${OBJECTDIR}/_ext/1728594169/interrupts.o ../src/config/sam_e70_xult/interrupts.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/exceptions.o: ../src/config/sam_e70_xult/exceptions.c  .generated_files/flags/sam_e70_xult/569f37bf052273b4fd8f434a92e37f6389d30f48 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/exceptions.o.d" -o ${OBJECTDIR}/_ext/1728594169/exceptions.o ../src/config/sam_e70_xult/exceptions.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/startup_xc32.o: ../src/config/sam_e70_xult/startup_xc32.c  .generated_files/flags/sam_e70_xult/ad0dc5202c09c6f7e4a5d94d60c4744da9fc1694 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ../src/config/sam_e70_xult/startup_xc32.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/libc_syscalls.o: ../src/config/sam_e70_xult/libc_syscalls.c  .generated_files/flags/sam_e70_xult/ba001a5dbd8d1bd4db41b1906f1f57abc8fee462 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ../src/config/sam_e70_xult/libc_syscalls.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/freertos_hooks.o: ../src/config/sam_e70_xult/freertos_hooks.c  .generated_files/flags/sam_e70_xult/98f3f9e647142371afcb7bacee944f576adfe9e1 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o ../src/config/sam_e70_xult/freertos_hooks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/tasks.o: ../src/config/sam_e70_xult/tasks.c  .generated_files/flags/sam_e70_xult/c5ff1c5c913348e0d32904a7b276dc876bfd8372 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/tasks.o.d" -o ${OBJECTDIR}/_ext/1728594169/tasks.o ../src/config/sam_e70_xult/tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/977623654/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c  .generated_files/flags/sam_e70_xult/36a6301f068e1a31ddf36540be9209ffb82981d4 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/977623654" 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977623654/port.o.d" -o ${OBJECTDIR}/_ext/977623654/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/sam_e70_xult/cf2848ae53e34cb73d64c08ae5f4113384aacddd .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/sam_e70_xult/9197719084f2f486d10119956cb14b06a6c0286f .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/sam_e70_xult/490b258b8c577b88f079d443ddb340114a1232d8 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/sam_e70_xult/4eb498eca12b8f2a2867281f9ade1b597b54dfa5 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/sam_e70_xult/52b9017a27879c51a48aa81e607bc5caee525264 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/sam_e70_xult/a73a33547e88e6a8be022df15c5d4877435eb661 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/sam_e70_xult/8aab617290b47a0f069c24c37fa5c52f7756bbd1 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/sam_e70_xult/edd8389b546111d3953ea647db478d0e75c04f53 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_e70_xult/d4cb74f703cb2fd40ccdb473feac059c974c2632 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_communication.o: ../src/app_communication.c  .generated_files/flags/sam_e70_xult/1020581afd9333ec8d47268accecda86a76ec99a .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_communication.o ../src/app_communication.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_mast_control.o: ../src/app_mast_control.c  .generated_files/flags/sam_e70_xult/b66411699cd87a7949f35d2022eb9a4f383f62c .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mast_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_mast_control.o ../src/app_mast_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o: ../src/app_course_algorithm.c  .generated_files/flags/sam_e70_xult/c73c29ff13eac889209f089704b1d458918b4aec .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o ../src/app_course_algorithm.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_rudder_control.o: ../src/app_rudder_control.c  .generated_files/flags/sam_e70_xult/f687d68b315d0035eae1931670438ae54723e6c8 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o ../src/app_rudder_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_anemometer.o: ../src/app_anemometer.c  .generated_files/flags/sam_e70_xult/b9aab4f2b3b2f968438cb955ef388794316d19d5 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_anemometer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_anemometer.o ../src/app_anemometer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_gps.o: ../src/app_gps.c  .generated_files/flags/sam_e70_xult/95c0fef1f14d38881e4197a5bd483e2b7b9f4dae .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_gps.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_gps.o ../src/app_gps.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_imu.o: ../src/app_imu.c  .generated_files/flags/sam_e70_xult/9c4de9037944285a6b133aecebaac7f419ef4811 .generated_files/flags/sam_e70_xult/1284be375ae6f3f8148d6bc286da5a93b351996c
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
