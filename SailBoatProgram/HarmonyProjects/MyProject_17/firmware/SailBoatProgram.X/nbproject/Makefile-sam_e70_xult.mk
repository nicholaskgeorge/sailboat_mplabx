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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SailBoatProgram.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SailBoatProgram.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c ../src/config/sam_e70_xult/osal/osal_freertos.c ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c ../src/config/sam_e70_xult/stdio/xc32_monitor.c ../src/config/sam_e70_xult/system/cache/sys_cache.c ../src/config/sam_e70_xult/system/dma/sys_dma.c ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c ../src/config/sam_e70_xult/system/fs/src/sys_fs.c ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c ../src/config/sam_e70_xult/system/int/src/sys_int.c ../src/config/sam_e70_xult/system/time/src/sys_time.c ../src/config/sam_e70_xult/initialization.c ../src/config/sam_e70_xult/interrupts.c ../src/config/sam_e70_xult/exceptions.c ../src/config/sam_e70_xult/startup_xc32.c ../src/config/sam_e70_xult/libc_syscalls.c ../src/config/sam_e70_xult/freertos_hooks.c ../src/config/sam_e70_xult/tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/app_communication.c ../src/app_mast_control.c ../src/app_course_algorithm.c ../src/app_rudder_control.c ../src/app_anemometer.c ../src/app_gps.c ../src/radio.c ../src/app_imu.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/957281314/drv_i2c.o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o ${OBJECTDIR}/_ext/716655881/drv_usart.o ${OBJECTDIR}/_ext/1613695899/osal_freertos.o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ${OBJECTDIR}/_ext/719181653/plib_hsmci.o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o ${OBJECTDIR}/_ext/865331892/plib_tc3.o ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ${OBJECTDIR}/_ext/707186936/plib_usart0.o ${OBJECTDIR}/_ext/707186936/plib_usart2.o ${OBJECTDIR}/_ext/704852250/plib_xdmac.o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ${OBJECTDIR}/_ext/876653320/sys_cache.o ${OBJECTDIR}/_ext/984150034/sys_dma.o ${OBJECTDIR}/_ext/1043829778/ff.o ${OBJECTDIR}/_ext/1043829778/ffunicode.o ${OBJECTDIR}/_ext/1893760823/diskio.o ${OBJECTDIR}/_ext/1305476372/sys_fs.o ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/766002106/sys_int.o ${OBJECTDIR}/_ext/327803284/sys_time.o ${OBJECTDIR}/_ext/1728594169/initialization.o ${OBJECTDIR}/_ext/1728594169/interrupts.o ${OBJECTDIR}/_ext/1728594169/exceptions.o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o ${OBJECTDIR}/_ext/1728594169/tasks.o ${OBJECTDIR}/_ext/977623654/port.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_communication.o ${OBJECTDIR}/_ext/1360937237/app_mast_control.o ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o ${OBJECTDIR}/_ext/1360937237/app_anemometer.o ${OBJECTDIR}/_ext/1360937237/app_gps.o ${OBJECTDIR}/_ext/1360937237/radio.o ${OBJECTDIR}/_ext/1360937237/app_imu.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/957281314/drv_i2c.o.d ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d ${OBJECTDIR}/_ext/716655881/drv_usart.o.d ${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d ${OBJECTDIR}/_ext/1055500827/plib_clk.o.d ${OBJECTDIR}/_ext/1055499099/plib_efc.o.d ${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d ${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d ${OBJECTDIR}/_ext/1055488423/plib_pio.o.d ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d ${OBJECTDIR}/_ext/865331892/plib_tc3.o.d ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d ${OBJECTDIR}/_ext/707186936/plib_usart1.o.d ${OBJECTDIR}/_ext/707186936/plib_usart0.o.d ${OBJECTDIR}/_ext/707186936/plib_usart2.o.d ${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d ${OBJECTDIR}/_ext/876653320/sys_cache.o.d ${OBJECTDIR}/_ext/984150034/sys_dma.o.d ${OBJECTDIR}/_ext/1043829778/ff.o.d ${OBJECTDIR}/_ext/1043829778/ffunicode.o.d ${OBJECTDIR}/_ext/1893760823/diskio.o.d ${OBJECTDIR}/_ext/1305476372/sys_fs.o.d ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d ${OBJECTDIR}/_ext/766002106/sys_int.o.d ${OBJECTDIR}/_ext/327803284/sys_time.o.d ${OBJECTDIR}/_ext/1728594169/initialization.o.d ${OBJECTDIR}/_ext/1728594169/interrupts.o.d ${OBJECTDIR}/_ext/1728594169/exceptions.o.d ${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d ${OBJECTDIR}/_ext/1728594169/tasks.o.d ${OBJECTDIR}/_ext/977623654/port.o.d ${OBJECTDIR}/_ext/1665200909/heap_1.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_communication.o.d ${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o.d ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d ${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d ${OBJECTDIR}/_ext/1360937237/app_gps.o.d ${OBJECTDIR}/_ext/1360937237/radio.o.d ${OBJECTDIR}/_ext/1360937237/app_imu.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/957281314/drv_i2c.o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o ${OBJECTDIR}/_ext/716655881/drv_usart.o ${OBJECTDIR}/_ext/1613695899/osal_freertos.o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ${OBJECTDIR}/_ext/719181653/plib_hsmci.o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o ${OBJECTDIR}/_ext/865331892/plib_tc3.o ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ${OBJECTDIR}/_ext/707186936/plib_usart0.o ${OBJECTDIR}/_ext/707186936/plib_usart2.o ${OBJECTDIR}/_ext/704852250/plib_xdmac.o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ${OBJECTDIR}/_ext/876653320/sys_cache.o ${OBJECTDIR}/_ext/984150034/sys_dma.o ${OBJECTDIR}/_ext/1043829778/ff.o ${OBJECTDIR}/_ext/1043829778/ffunicode.o ${OBJECTDIR}/_ext/1893760823/diskio.o ${OBJECTDIR}/_ext/1305476372/sys_fs.o ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/766002106/sys_int.o ${OBJECTDIR}/_ext/327803284/sys_time.o ${OBJECTDIR}/_ext/1728594169/initialization.o ${OBJECTDIR}/_ext/1728594169/interrupts.o ${OBJECTDIR}/_ext/1728594169/exceptions.o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o ${OBJECTDIR}/_ext/1728594169/tasks.o ${OBJECTDIR}/_ext/977623654/port.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_communication.o ${OBJECTDIR}/_ext/1360937237/app_mast_control.o ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o ${OBJECTDIR}/_ext/1360937237/app_anemometer.o ${OBJECTDIR}/_ext/1360937237/app_gps.o ${OBJECTDIR}/_ext/1360937237/radio.o ${OBJECTDIR}/_ext/1360937237/app_imu.o

# Source Files
SOURCEFILES=../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c ../src/config/sam_e70_xult/osal/osal_freertos.c ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c ../src/config/sam_e70_xult/stdio/xc32_monitor.c ../src/config/sam_e70_xult/system/cache/sys_cache.c ../src/config/sam_e70_xult/system/dma/sys_dma.c ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c ../src/config/sam_e70_xult/system/fs/src/sys_fs.c ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c ../src/config/sam_e70_xult/system/int/src/sys_int.c ../src/config/sam_e70_xult/system/time/src/sys_time.c ../src/config/sam_e70_xult/initialization.c ../src/config/sam_e70_xult/interrupts.c ../src/config/sam_e70_xult/exceptions.c ../src/config/sam_e70_xult/startup_xc32.c ../src/config/sam_e70_xult/libc_syscalls.c ../src/config/sam_e70_xult/freertos_hooks.c ../src/config/sam_e70_xult/tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/app_communication.c ../src/app_mast_control.c ../src/app_course_algorithm.c ../src/app_rudder_control.c ../src/app_anemometer.c ../src/app_gps.c ../src/radio.c ../src/app_imu.c

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
	${MAKE}  -f nbproject/Makefile-sam_e70_xult.mk dist/${CND_CONF}/${IMAGE_TYPE}/SailBoatProgram.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/957281314/drv_i2c.o: ../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c  .generated_files/89fe01385af24e0cb93387d10f9055042d13d381.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/957281314" 
	@${RM} ${OBJECTDIR}/_ext/957281314/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/957281314/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957281314/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/957281314/drv_i2c.o ../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o: ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c  .generated_files/ee740ae5a1317f4ceb3d3769270722328874a705.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1565510230" 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d" -o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o: ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c  .generated_files/2c4bf60dfa03390afcad11d84706613bef9cdfa6.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1565510230" 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d" -o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/716655881/drv_usart.o: ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c  .generated_files/72553f9a2c38d05d8a63ed9ffde67a6ef882a72.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/716655881" 
	@${RM} ${OBJECTDIR}/_ext/716655881/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/716655881/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/716655881/drv_usart.o.d" -o ${OBJECTDIR}/_ext/716655881/drv_usart.o ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1613695899/osal_freertos.o: ../src/config/sam_e70_xult/osal/osal_freertos.c  .generated_files/6e28ebc79b5397d2a7fb920788e14ccd1aa9920b.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1613695899" 
	@${RM} ${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613695899/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1613695899/osal_freertos.o ../src/config/sam_e70_xult/osal/osal_freertos.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055500827/plib_clk.o: ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c  .generated_files/779e5283964909fead6def1a929e997faa5a3419.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1055500827" 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055500827/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055499099/plib_efc.o: ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c  .generated_files/bc6b0a4d0192f7d96bcc2a22c7e30409dd99b2d1.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1055499099" 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055499099/plib_efc.o.d" -o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/719181653/plib_hsmci.o: ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c  .generated_files/d21a18f31ada9f24e383478dcfce5cd83a65f371.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/719181653" 
	@${RM} ${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d 
	@${RM} ${OBJECTDIR}/_ext/719181653/plib_hsmci.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d" -o ${OBJECTDIR}/_ext/719181653/plib_hsmci.o ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1639550079/plib_nvic.o: ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c  .generated_files/aae639ae8494f085b15b8f87da9fdb9ec97d3cc9.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1639550079" 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055488423/plib_pio.o: ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c  .generated_files/ad29c0eac0b0a372df4643d6a5c3a2d0bcc82a8e.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1055488423" 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055488423/plib_pio.o.d" -o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055487991/plib_pwm0.o: ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c  .generated_files/8bde22d327f525d0709a612e384c25fa22e92906.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1055487991" 
	@${RM} ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/865331892/plib_tc3.o: ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c  .generated_files/6dce7430fc1e635f6a9b6dd58b83ec0e0ad6a454.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/865331892" 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/865331892/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/865331892/plib_tc3.o ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o: ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/23104bcfb81809a1306a822175f497baa0053747.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1539215101" 
	@${RM} ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart1.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c  .generated_files/ca74a32355d3632c16d98c47cd620492f2527dcc.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart0.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c  .generated_files/d052b6a34abf753e5899f2e4125ac02f79fb951f.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart0.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart2.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c  .generated_files/23274d2e054ab928dae631e4a364ac106e9b9d95.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart2.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart2.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/704852250/plib_xdmac.o: ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c  .generated_files/12f2272927dcb502074c899ada07403ab58eaa77.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/704852250" 
	@${RM} ${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/704852250/plib_xdmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d" -o ${OBJECTDIR}/_ext/704852250/plib_xdmac.o ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1518761459/xc32_monitor.o: ../src/config/sam_e70_xult/stdio/xc32_monitor.c  .generated_files/edf0b2783952c6bd45b993f409ec2f72e35697cd.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1518761459" 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ../src/config/sam_e70_xult/stdio/xc32_monitor.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/876653320/sys_cache.o: ../src/config/sam_e70_xult/system/cache/sys_cache.c  .generated_files/29c2916e0b62862914a2507d0092a5bf337929f.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/876653320" 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/876653320/sys_cache.o.d" -o ${OBJECTDIR}/_ext/876653320/sys_cache.o ../src/config/sam_e70_xult/system/cache/sys_cache.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/984150034/sys_dma.o: ../src/config/sam_e70_xult/system/dma/sys_dma.c  .generated_files/dffb43a2ee4a461c391d0a0f5f97c3c0480e9873.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/984150034" 
	@${RM} ${OBJECTDIR}/_ext/984150034/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/984150034/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/984150034/sys_dma.o.d" -o ${OBJECTDIR}/_ext/984150034/sys_dma.o ../src/config/sam_e70_xult/system/dma/sys_dma.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1043829778/ff.o: ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c  .generated_files/97254d9e8e24ec3bb607b3e2d01abc595078e0c6.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1043829778" 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1043829778/ff.o.d" -o ${OBJECTDIR}/_ext/1043829778/ff.o ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1043829778/ffunicode.o: ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/7c07e4fb1a3ed6e769d9a5ba4100a9e164811e7e.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1043829778" 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1043829778/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1043829778/ffunicode.o ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1893760823/diskio.o: ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/c063c866235c524cb35b2829c8d55fc6e6ffc5f8.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1893760823" 
	@${RM} ${OBJECTDIR}/_ext/1893760823/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1893760823/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1893760823/diskio.o.d" -o ${OBJECTDIR}/_ext/1893760823/diskio.o ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs.c  .generated_files/d789c7e6a8374a595a1534827e356febc9508b85.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs.o ../src/config/sam_e70_xult/system/fs/src/sys_fs.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c  .generated_files/747dd5ffa68b8b9997a5ec2e03e3850be1875d5b.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c  .generated_files/fd65d3d7806b4e60c1ba5d49a4a059135c06c5d9.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/766002106/sys_int.o: ../src/config/sam_e70_xult/system/int/src/sys_int.c  .generated_files/f5872604a2748f9b9d2af20a33378a36c4af9a6c.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/766002106" 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/766002106/sys_int.o.d" -o ${OBJECTDIR}/_ext/766002106/sys_int.o ../src/config/sam_e70_xult/system/int/src/sys_int.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/327803284/sys_time.o: ../src/config/sam_e70_xult/system/time/src/sys_time.c  .generated_files/4e9b1f9f867d4134c694de30cc5a63c47112bd2.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327803284" 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327803284/sys_time.o.d" -o ${OBJECTDIR}/_ext/327803284/sys_time.o ../src/config/sam_e70_xult/system/time/src/sys_time.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/initialization.o: ../src/config/sam_e70_xult/initialization.c  .generated_files/27893099b7ac166130a6115b1a3cf84849ea14f9.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/initialization.o.d" -o ${OBJECTDIR}/_ext/1728594169/initialization.o ../src/config/sam_e70_xult/initialization.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/interrupts.o: ../src/config/sam_e70_xult/interrupts.c  .generated_files/7cbe52e297b307a25fe6ba5930b0680ba2736e68.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/interrupts.o.d" -o ${OBJECTDIR}/_ext/1728594169/interrupts.o ../src/config/sam_e70_xult/interrupts.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/exceptions.o: ../src/config/sam_e70_xult/exceptions.c  .generated_files/491dd922201a4a6115b900e9ef24c2380feeeba3.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/exceptions.o.d" -o ${OBJECTDIR}/_ext/1728594169/exceptions.o ../src/config/sam_e70_xult/exceptions.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/startup_xc32.o: ../src/config/sam_e70_xult/startup_xc32.c  .generated_files/34a4cf6167f8727e3c1bf1f03e222342b061a2f5.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ../src/config/sam_e70_xult/startup_xc32.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/libc_syscalls.o: ../src/config/sam_e70_xult/libc_syscalls.c  .generated_files/581d09584402a162c9c4073211b2e03c90743b49.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ../src/config/sam_e70_xult/libc_syscalls.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/freertos_hooks.o: ../src/config/sam_e70_xult/freertos_hooks.c  .generated_files/1dfcb77582b1e0c4643eb7c2b6a9597fe17516ff.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o ../src/config/sam_e70_xult/freertos_hooks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/tasks.o: ../src/config/sam_e70_xult/tasks.c  .generated_files/8dbe1eecbfc3359d9ec7adc2286a884118204470.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/tasks.o.d" -o ${OBJECTDIR}/_ext/1728594169/tasks.o ../src/config/sam_e70_xult/tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/977623654/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c  .generated_files/6aaea6b053e9e39cfab0a82738680401131bd686.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/977623654" 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977623654/port.o.d" -o ${OBJECTDIR}/_ext/977623654/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/86429561d0fa3870a3ef6d831b74e3dc2c4183cc.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/1c3885aa797c62747766974049c2b97746ae9634.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/531c649008c98cd178b4cd8a1181ffbaecb30d6f.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/50613bedffa1fe8b26ab28d19c29c31c461f74b8.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/94015c16ee68e5f6a073689de3f8b5219add6a93.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/b396d77023fca045d87bece3a52ecbff1d34a09f.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/2a05d37d130e881d724d9993fe94247253d83b9c.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/83ea1e6924ed6318d0be49ca93eb047b74c84c2c.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/52ae2071af886f82b291292453403169908d19bf.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_communication.o: ../src/app_communication.c  .generated_files/e0f5f444b2d8d0bb855176e1a986316b13aa4f98.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_communication.o ../src/app_communication.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_mast_control.o: ../src/app_mast_control.c  .generated_files/d729bd8f4453660f4c7b9f00b483debb1561782e.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mast_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_mast_control.o ../src/app_mast_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o: ../src/app_course_algorithm.c  .generated_files/2367cb6617225a3455de30e31f500312a454c467.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o ../src/app_course_algorithm.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_rudder_control.o: ../src/app_rudder_control.c  .generated_files/95db98b907991c15397b58b4043f9aab3f0e6d56.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o ../src/app_rudder_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_anemometer.o: ../src/app_anemometer.c  .generated_files/cc2682efe46ed81cdba48c4a7bd22499c86a95de.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_anemometer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_anemometer.o ../src/app_anemometer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_gps.o: ../src/app_gps.c  .generated_files/729e373db9f3ce370a7d3a629375a8cd05783538.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_gps.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_gps.o ../src/app_gps.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/radio.o: ../src/radio.c  .generated_files/ae3c955eb7ad35a493ff13a903335dbd457efe90.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/radio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/radio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/radio.o.d" -o ${OBJECTDIR}/_ext/1360937237/radio.o ../src/radio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_imu.o: ../src/app_imu.c  .generated_files/3bfb88fa3c62b7b5c41d1b97b091b398eaf218fc.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_imu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_imu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_imu.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_imu.o ../src/app_imu.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/957281314/drv_i2c.o: ../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c  .generated_files/26dde939585200094eb60ceee2b98c348d48be92.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/957281314" 
	@${RM} ${OBJECTDIR}/_ext/957281314/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/957281314/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957281314/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/957281314/drv_i2c.o ../src/config/sam_e70_xult/driver/i2c/src/drv_i2c.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o: ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c  .generated_files/9fba8cfd67a155a8e3af5c4330f4f5c1dd2fc245.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1565510230" 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o.d" -o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc_file_system.o ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc_file_system.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o: ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c  .generated_files/2f455c88219f7f23e0d46fb434b78c676c28b2eb.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1565510230" 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o.d" -o ${OBJECTDIR}/_ext/1565510230/drv_sdmmc.o ../src/config/sam_e70_xult/driver/sdmmc/src/drv_sdmmc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/716655881/drv_usart.o: ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c  .generated_files/3b10585d4b0dd963f3d085ccbd16f69f22fed1f1.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/716655881" 
	@${RM} ${OBJECTDIR}/_ext/716655881/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/716655881/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/716655881/drv_usart.o.d" -o ${OBJECTDIR}/_ext/716655881/drv_usart.o ../src/config/sam_e70_xult/driver/usart/src/drv_usart.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1613695899/osal_freertos.o: ../src/config/sam_e70_xult/osal/osal_freertos.c  .generated_files/ee8088ddd655c962d7ee73844f22489c9b85348a.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1613695899" 
	@${RM} ${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613695899/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1613695899/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1613695899/osal_freertos.o ../src/config/sam_e70_xult/osal/osal_freertos.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055500827/plib_clk.o: ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c  .generated_files/5c110246777f0d55254678f290ed32a161863907.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1055500827" 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055500827/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055500827/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1055500827/plib_clk.o ../src/config/sam_e70_xult/peripheral/clk/plib_clk.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055499099/plib_efc.o: ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c  .generated_files/eebf115ac6765a491dc905656dd8fa225ff74f21.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1055499099" 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055499099/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055499099/plib_efc.o.d" -o ${OBJECTDIR}/_ext/1055499099/plib_efc.o ../src/config/sam_e70_xult/peripheral/efc/plib_efc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/719181653/plib_hsmci.o: ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c  .generated_files/6def4558bfc5ed44771292b15da7e727beeb4fca.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/719181653" 
	@${RM} ${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d 
	@${RM} ${OBJECTDIR}/_ext/719181653/plib_hsmci.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/719181653/plib_hsmci.o.d" -o ${OBJECTDIR}/_ext/719181653/plib_hsmci.o ../src/config/sam_e70_xult/peripheral/hsmci/plib_hsmci.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1639550079/plib_nvic.o: ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c  .generated_files/9aeaab0460ca80da534e304823126dd6525021dd.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1639550079" 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1639550079/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1639550079/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1639550079/plib_nvic.o ../src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055488423/plib_pio.o: ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c  .generated_files/9390d61e0091e943a18a3a6963760a3280324323.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1055488423" 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055488423/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055488423/plib_pio.o.d" -o ${OBJECTDIR}/_ext/1055488423/plib_pio.o ../src/config/sam_e70_xult/peripheral/pio/plib_pio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1055487991/plib_pwm0.o: ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c  .generated_files/c0a35f31bf45104b7f5281d844cce2c8c01bfc21.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1055487991" 
	@${RM} ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1055487991/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/1055487991/plib_pwm0.o ../src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/865331892/plib_tc3.o: ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c  .generated_files/b63149ffdc1a7326a4dd7b4da0100635296d68cf.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/865331892" 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/865331892/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/865331892/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/865331892/plib_tc3.o ../src/config/sam_e70_xult/peripheral/tc/plib_tc3.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o: ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/8e65e7cb0171785829a4be535c6d311141057b0c.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1539215101" 
	@${RM} ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/1539215101/plib_twihs0_master.o ../src/config/sam_e70_xult/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart1.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c  .generated_files/a4ecb6413e4de5c3d0fbd2f25d84c308b5a571a9.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart1.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart0.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c  .generated_files/4442e271280b3b0375e778e67d7bef579ec32732.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart0.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/707186936/plib_usart2.o: ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c  .generated_files/c018e581704189db2efea0f52c570129e3357988.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/707186936" 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/707186936/plib_usart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707186936/plib_usart2.o.d" -o ${OBJECTDIR}/_ext/707186936/plib_usart2.o ../src/config/sam_e70_xult/peripheral/usart/plib_usart2.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/704852250/plib_xdmac.o: ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c  .generated_files/b99e39bbdb32ae9b2d1a504d5c9bcf85d2b689f1.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/704852250" 
	@${RM} ${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/704852250/plib_xdmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/704852250/plib_xdmac.o.d" -o ${OBJECTDIR}/_ext/704852250/plib_xdmac.o ../src/config/sam_e70_xult/peripheral/xdmac/plib_xdmac.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1518761459/xc32_monitor.o: ../src/config/sam_e70_xult/stdio/xc32_monitor.c  .generated_files/b95f1127a570d50613825ff4589a5ddf034c706d.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1518761459" 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1518761459/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1518761459/xc32_monitor.o ../src/config/sam_e70_xult/stdio/xc32_monitor.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/876653320/sys_cache.o: ../src/config/sam_e70_xult/system/cache/sys_cache.c  .generated_files/d9c241996d7b40dba5a60e32c01cb665efd502bd.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/876653320" 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/876653320/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/876653320/sys_cache.o.d" -o ${OBJECTDIR}/_ext/876653320/sys_cache.o ../src/config/sam_e70_xult/system/cache/sys_cache.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/984150034/sys_dma.o: ../src/config/sam_e70_xult/system/dma/sys_dma.c  .generated_files/bca7410aa8cd7c6e3c657afafc8fd86f0f40cd7d.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/984150034" 
	@${RM} ${OBJECTDIR}/_ext/984150034/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/984150034/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/984150034/sys_dma.o.d" -o ${OBJECTDIR}/_ext/984150034/sys_dma.o ../src/config/sam_e70_xult/system/dma/sys_dma.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1043829778/ff.o: ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c  .generated_files/6ec9699788fe7a3fa9bffd9653441ba78dca882f.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1043829778" 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1043829778/ff.o.d" -o ${OBJECTDIR}/_ext/1043829778/ff.o ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ff.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1043829778/ffunicode.o: ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/cde49eddb84fe4b010519d371cfc0ef2cc169a5e.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1043829778" 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043829778/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1043829778/ffunicode.o.d" -o ${OBJECTDIR}/_ext/1043829778/ffunicode.o ../src/config/sam_e70_xult/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1893760823/diskio.o: ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/5539f241137bd8acda6d1cc4cba28f24092c2f74.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1893760823" 
	@${RM} ${OBJECTDIR}/_ext/1893760823/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1893760823/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1893760823/diskio.o.d" -o ${OBJECTDIR}/_ext/1893760823/diskio.o ../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs.c  .generated_files/e8dc3626519c2c054f9bc859f4f93880d4cad055.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs.o ../src/config/sam_e70_xult/system/fs/src/sys_fs.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c  .generated_files/3bf7a9808461139ade0559b4a08f9520d926acb5.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs_media_manager.o ../src/config/sam_e70_xult/system/fs/src/sys_fs_media_manager.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o: ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c  .generated_files/482faa215d6a74dbe70269a190a0eac0f4c1a9d7.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1305476372" 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/1305476372/sys_fs_fat_interface.o ../src/config/sam_e70_xult/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/766002106/sys_int.o: ../src/config/sam_e70_xult/system/int/src/sys_int.c  .generated_files/cb930cac3915103925ebb5259646bdb3fb26f543.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/766002106" 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/766002106/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/766002106/sys_int.o.d" -o ${OBJECTDIR}/_ext/766002106/sys_int.o ../src/config/sam_e70_xult/system/int/src/sys_int.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/327803284/sys_time.o: ../src/config/sam_e70_xult/system/time/src/sys_time.c  .generated_files/82d81ca7ee1707aec7c91c182ea8ef630399ba4b.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327803284" 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/327803284/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327803284/sys_time.o.d" -o ${OBJECTDIR}/_ext/327803284/sys_time.o ../src/config/sam_e70_xult/system/time/src/sys_time.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/initialization.o: ../src/config/sam_e70_xult/initialization.c  .generated_files/98091800e7becaba547c8a8c048084b2a5050634.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/initialization.o.d" -o ${OBJECTDIR}/_ext/1728594169/initialization.o ../src/config/sam_e70_xult/initialization.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/interrupts.o: ../src/config/sam_e70_xult/interrupts.c  .generated_files/46e29ca9126042e89907c139e33809a152c829ad.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/interrupts.o.d" -o ${OBJECTDIR}/_ext/1728594169/interrupts.o ../src/config/sam_e70_xult/interrupts.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/exceptions.o: ../src/config/sam_e70_xult/exceptions.c  .generated_files/c67e2ba454411881d8dbbd1f1b9482c0b2ba7b38.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/exceptions.o.d" -o ${OBJECTDIR}/_ext/1728594169/exceptions.o ../src/config/sam_e70_xult/exceptions.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/startup_xc32.o: ../src/config/sam_e70_xult/startup_xc32.c  .generated_files/24529a94dd3397ce45ab9be294546a97d60a2644.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1728594169/startup_xc32.o ../src/config/sam_e70_xult/startup_xc32.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/libc_syscalls.o: ../src/config/sam_e70_xult/libc_syscalls.c  .generated_files/61557f7edaee102f9acecc9aa18553c6702f7318.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1728594169/libc_syscalls.o ../src/config/sam_e70_xult/libc_syscalls.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/freertos_hooks.o: ../src/config/sam_e70_xult/freertos_hooks.c  .generated_files/c80c2dbac3e55cfc2efbc53052511a026d6ceb25.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1728594169/freertos_hooks.o ../src/config/sam_e70_xult/freertos_hooks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1728594169/tasks.o: ../src/config/sam_e70_xult/tasks.c  .generated_files/ea02fa768cab3b1e9e0150d27cbee0b03761a79.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728594169" 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728594169/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728594169/tasks.o.d" -o ${OBJECTDIR}/_ext/1728594169/tasks.o ../src/config/sam_e70_xult/tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/977623654/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c  .generated_files/dccb4b05905079fc66b0b8c770c1a2bfde727752.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/977623654" 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/977623654/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977623654/port.o.d" -o ${OBJECTDIR}/_ext/977623654/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/b4673f5bc0bd0f53dea3e9b55c72e519653cbc02.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/246d5f5d638f501ed919bfd01bab768ca76d37a5.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/6929cf0be98a67cfe11c3b2958b1d798b9e42790.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/b68d2ca1e1d5b925722f3badad4e338804f0701a.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/dddf3e58dcc9e5d1063fe883a47d98d20365d7bb.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/42da99320288484919caedde78b600a8ff521f93.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/b3c5cb24ed788e078afc9e4fe034de8541ea0ab.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/67ecf7de978f8479f71e044e3f329bf86e72cfb5.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/96dec469949b7c2fea5a9b694155b78d1bfc1055.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_communication.o: ../src/app_communication.c  .generated_files/b4d8946c8627d7211c3b5fd433ee29e519dd1fd1.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_communication.o ../src/app_communication.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_mast_control.o: ../src/app_mast_control.c  .generated_files/9dfd3904909aac1e59124c643fd4fb1783b9ff34.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mast_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_mast_control.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_mast_control.o ../src/app_mast_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o: ../src/app_course_algorithm.c  .generated_files/87227539179d615e028e62fde1d814c255f6b532.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_course_algorithm.o ../src/app_course_algorithm.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_rudder_control.o: ../src/app_rudder_control.c  .generated_files/9c1d16e7c5f387a5726fa278403e6344e1147cde.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_rudder_control.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_rudder_control.o ../src/app_rudder_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_anemometer.o: ../src/app_anemometer.c  .generated_files/8df9bf077a2541d54784446d52c3e4cfcddaff89.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_anemometer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_anemometer.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_anemometer.o ../src/app_anemometer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_gps.o: ../src/app_gps.c  .generated_files/825358750c68f0adc45c4096e5a854bdcc445052.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_gps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_gps.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_gps.o ../src/app_gps.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/radio.o: ../src/radio.c  .generated_files/2232df0b5806bfc8b80f7f742f18d43d50d5b2cd.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/radio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/radio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/config/sam_e70_xult/system/fs/fat_fs/file_system" -I"../src/config/sam_e70_xult/system/fs/fat_fs/hardware_access" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/radio.o.d" -o ${OBJECTDIR}/_ext/1360937237/radio.o ../src/radio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_imu.o: ../src/app_imu.c  .generated_files/8c011d9d9bd93c7885fe6dfa011977ff36067501.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
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
dist/${CND_CONF}/${IMAGE_TYPE}/SailBoatProgram.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_e70_xult/ATSAME70Q21B.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/SailBoatProgram.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/same70b"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/SailBoatProgram.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_e70_xult/ATSAME70Q21B.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/SailBoatProgram.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/same70b"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/SailBoatProgram.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
