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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SailBoatProgramGit.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SailBoatProgramGit.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/driver/usart/src/drv_usart.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/osal/osal_freertos.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/clk/plib_clk.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/efc/plib_efc.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/pio/plib_pio.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart1.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart0.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart2.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/stdio/xc32_monitor.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/cache/sys_cache.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/dma/sys_dma.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/int/src/sys_int.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/initialization.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/interrupts.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/exceptions.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/startup_xc32.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/libc_syscalls.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/freertos_hooks.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/tasks.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/croutine.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/list.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/queue.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/timers.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/event_groups.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../../HarmonyProjects/MyProject_17/firmware/src/main.c ../../HarmonyProjects/MyProject_17/firmware/src/anemometer.c ../../HarmonyProjects/MyProject_17/firmware/src/IMU.c ../../HarmonyProjects/MyProject_17/firmware/src/app_communication.c ../../HarmonyProjects/MyProject_17/firmware/src/app_mast_control.c ../../HarmonyProjects/MyProject_17/firmware/src/app_course_algorithm.c ../../HarmonyProjects/MyProject_17/firmware/src/app_rudder_control.c ../../HarmonyProjects/MyProject_17/firmware/src/app_anemometer.c ../../HarmonyProjects/MyProject_17/firmware/src/app_gps.c ../../HarmonyProjects/MyProject_17/firmware/src/radio.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/253009114/drv_usart.o ${OBJECTDIR}/_ext/298290690/osal_freertos.o ${OBJECTDIR}/_ext/1230811326/plib_clk.o ${OBJECTDIR}/_ext/1230809598/plib_efc.o ${OBJECTDIR}/_ext/499891906/plib_nvic.o ${OBJECTDIR}/_ext/1230798922/plib_pio.o ${OBJECTDIR}/_ext/1230798490/plib_pwm0.o ${OBJECTDIR}/_ext/1676851931/plib_usart1.o ${OBJECTDIR}/_ext/1676851931/plib_usart0.o ${OBJECTDIR}/_ext/1676851931/plib_usart2.o ${OBJECTDIR}/_ext/660803574/xc32_monitor.o ${OBJECTDIR}/_ext/1140522603/sys_cache.o ${OBJECTDIR}/_ext/1902723019/sys_dma.o ${OBJECTDIR}/_ext/590691607/sys_int.o ${OBJECTDIR}/_ext/1406490940/initialization.o ${OBJECTDIR}/_ext/1406490940/interrupts.o ${OBJECTDIR}/_ext/1406490940/exceptions.o ${OBJECTDIR}/_ext/1406490940/startup_xc32.o ${OBJECTDIR}/_ext/1406490940/libc_syscalls.o ${OBJECTDIR}/_ext/1406490940/freertos_hooks.o ${OBJECTDIR}/_ext/1406490940/tasks.o ${OBJECTDIR}/_ext/259612183/port.o ${OBJECTDIR}/_ext/813600246/heap_1.o ${OBJECTDIR}/_ext/668082169/croutine.o ${OBJECTDIR}/_ext/668082169/list.o ${OBJECTDIR}/_ext/668082169/queue.o ${OBJECTDIR}/_ext/668082169/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/668082169/timers.o ${OBJECTDIR}/_ext/668082169/event_groups.o ${OBJECTDIR}/_ext/668082169/stream_buffer.o ${OBJECTDIR}/_ext/1206265640/main.o ${OBJECTDIR}/_ext/1206265640/anemometer.o ${OBJECTDIR}/_ext/1206265640/IMU.o ${OBJECTDIR}/_ext/1206265640/app_communication.o ${OBJECTDIR}/_ext/1206265640/app_mast_control.o ${OBJECTDIR}/_ext/1206265640/app_course_algorithm.o ${OBJECTDIR}/_ext/1206265640/app_rudder_control.o ${OBJECTDIR}/_ext/1206265640/app_anemometer.o ${OBJECTDIR}/_ext/1206265640/app_gps.o ${OBJECTDIR}/_ext/1206265640/radio.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/253009114/drv_usart.o.d ${OBJECTDIR}/_ext/298290690/osal_freertos.o.d ${OBJECTDIR}/_ext/1230811326/plib_clk.o.d ${OBJECTDIR}/_ext/1230809598/plib_efc.o.d ${OBJECTDIR}/_ext/499891906/plib_nvic.o.d ${OBJECTDIR}/_ext/1230798922/plib_pio.o.d ${OBJECTDIR}/_ext/1230798490/plib_pwm0.o.d ${OBJECTDIR}/_ext/1676851931/plib_usart1.o.d ${OBJECTDIR}/_ext/1676851931/plib_usart0.o.d ${OBJECTDIR}/_ext/1676851931/plib_usart2.o.d ${OBJECTDIR}/_ext/660803574/xc32_monitor.o.d ${OBJECTDIR}/_ext/1140522603/sys_cache.o.d ${OBJECTDIR}/_ext/1902723019/sys_dma.o.d ${OBJECTDIR}/_ext/590691607/sys_int.o.d ${OBJECTDIR}/_ext/1406490940/initialization.o.d ${OBJECTDIR}/_ext/1406490940/interrupts.o.d ${OBJECTDIR}/_ext/1406490940/exceptions.o.d ${OBJECTDIR}/_ext/1406490940/startup_xc32.o.d ${OBJECTDIR}/_ext/1406490940/libc_syscalls.o.d ${OBJECTDIR}/_ext/1406490940/freertos_hooks.o.d ${OBJECTDIR}/_ext/1406490940/tasks.o.d ${OBJECTDIR}/_ext/259612183/port.o.d ${OBJECTDIR}/_ext/813600246/heap_1.o.d ${OBJECTDIR}/_ext/668082169/croutine.o.d ${OBJECTDIR}/_ext/668082169/list.o.d ${OBJECTDIR}/_ext/668082169/queue.o.d ${OBJECTDIR}/_ext/668082169/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/668082169/timers.o.d ${OBJECTDIR}/_ext/668082169/event_groups.o.d ${OBJECTDIR}/_ext/668082169/stream_buffer.o.d ${OBJECTDIR}/_ext/1206265640/main.o.d ${OBJECTDIR}/_ext/1206265640/anemometer.o.d ${OBJECTDIR}/_ext/1206265640/IMU.o.d ${OBJECTDIR}/_ext/1206265640/app_communication.o.d ${OBJECTDIR}/_ext/1206265640/app_mast_control.o.d ${OBJECTDIR}/_ext/1206265640/app_course_algorithm.o.d ${OBJECTDIR}/_ext/1206265640/app_rudder_control.o.d ${OBJECTDIR}/_ext/1206265640/app_anemometer.o.d ${OBJECTDIR}/_ext/1206265640/app_gps.o.d ${OBJECTDIR}/_ext/1206265640/radio.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/253009114/drv_usart.o ${OBJECTDIR}/_ext/298290690/osal_freertos.o ${OBJECTDIR}/_ext/1230811326/plib_clk.o ${OBJECTDIR}/_ext/1230809598/plib_efc.o ${OBJECTDIR}/_ext/499891906/plib_nvic.o ${OBJECTDIR}/_ext/1230798922/plib_pio.o ${OBJECTDIR}/_ext/1230798490/plib_pwm0.o ${OBJECTDIR}/_ext/1676851931/plib_usart1.o ${OBJECTDIR}/_ext/1676851931/plib_usart0.o ${OBJECTDIR}/_ext/1676851931/plib_usart2.o ${OBJECTDIR}/_ext/660803574/xc32_monitor.o ${OBJECTDIR}/_ext/1140522603/sys_cache.o ${OBJECTDIR}/_ext/1902723019/sys_dma.o ${OBJECTDIR}/_ext/590691607/sys_int.o ${OBJECTDIR}/_ext/1406490940/initialization.o ${OBJECTDIR}/_ext/1406490940/interrupts.o ${OBJECTDIR}/_ext/1406490940/exceptions.o ${OBJECTDIR}/_ext/1406490940/startup_xc32.o ${OBJECTDIR}/_ext/1406490940/libc_syscalls.o ${OBJECTDIR}/_ext/1406490940/freertos_hooks.o ${OBJECTDIR}/_ext/1406490940/tasks.o ${OBJECTDIR}/_ext/259612183/port.o ${OBJECTDIR}/_ext/813600246/heap_1.o ${OBJECTDIR}/_ext/668082169/croutine.o ${OBJECTDIR}/_ext/668082169/list.o ${OBJECTDIR}/_ext/668082169/queue.o ${OBJECTDIR}/_ext/668082169/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/668082169/timers.o ${OBJECTDIR}/_ext/668082169/event_groups.o ${OBJECTDIR}/_ext/668082169/stream_buffer.o ${OBJECTDIR}/_ext/1206265640/main.o ${OBJECTDIR}/_ext/1206265640/anemometer.o ${OBJECTDIR}/_ext/1206265640/IMU.o ${OBJECTDIR}/_ext/1206265640/app_communication.o ${OBJECTDIR}/_ext/1206265640/app_mast_control.o ${OBJECTDIR}/_ext/1206265640/app_course_algorithm.o ${OBJECTDIR}/_ext/1206265640/app_rudder_control.o ${OBJECTDIR}/_ext/1206265640/app_anemometer.o ${OBJECTDIR}/_ext/1206265640/app_gps.o ${OBJECTDIR}/_ext/1206265640/radio.o

# Source Files
SOURCEFILES=../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/driver/usart/src/drv_usart.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/osal/osal_freertos.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/clk/plib_clk.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/efc/plib_efc.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/pio/plib_pio.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart1.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart0.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart2.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/stdio/xc32_monitor.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/cache/sys_cache.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/dma/sys_dma.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/int/src/sys_int.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/initialization.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/interrupts.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/exceptions.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/startup_xc32.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/libc_syscalls.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/freertos_hooks.c ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/tasks.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/croutine.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/list.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/queue.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/timers.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/event_groups.c ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../../HarmonyProjects/MyProject_17/firmware/src/main.c ../../HarmonyProjects/MyProject_17/firmware/src/anemometer.c ../../HarmonyProjects/MyProject_17/firmware/src/IMU.c ../../HarmonyProjects/MyProject_17/firmware/src/app_communication.c ../../HarmonyProjects/MyProject_17/firmware/src/app_mast_control.c ../../HarmonyProjects/MyProject_17/firmware/src/app_course_algorithm.c ../../HarmonyProjects/MyProject_17/firmware/src/app_rudder_control.c ../../HarmonyProjects/MyProject_17/firmware/src/app_anemometer.c ../../HarmonyProjects/MyProject_17/firmware/src/app_gps.c ../../HarmonyProjects/MyProject_17/firmware/src/radio.c

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
	${MAKE}  -f nbproject/Makefile-sam_e70_xult.mk dist/${CND_CONF}/${IMAGE_TYPE}/SailBoatProgramGit.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAME70Q21B
MP_LINKER_FILE_OPTION=,--script="..\..\HarmonyProjects\MyProject_17\firmware\src\config\sam_e70_xult\ATSAME70Q21B.ld"
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
${OBJECTDIR}/_ext/253009114/drv_usart.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/driver/usart/src/drv_usart.c  .generated_files/6d95aeacfe89d5f8636d878058ee2c60dcfe7b61.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/253009114" 
	@${RM} ${OBJECTDIR}/_ext/253009114/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/253009114/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/253009114/drv_usart.o.d" -o ${OBJECTDIR}/_ext/253009114/drv_usart.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/driver/usart/src/drv_usart.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/298290690/osal_freertos.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/osal/osal_freertos.c  .generated_files/cf96a8db84dce91d0afae6f4a4b91bedf143c5f5.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/298290690" 
	@${RM} ${OBJECTDIR}/_ext/298290690/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/298290690/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298290690/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/298290690/osal_freertos.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/osal/osal_freertos.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1230811326/plib_clk.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/clk/plib_clk.c  .generated_files/13af8e30c266f55f6f0a7ccc35e9c2f028b92266.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1230811326" 
	@${RM} ${OBJECTDIR}/_ext/1230811326/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230811326/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230811326/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1230811326/plib_clk.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/clk/plib_clk.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1230809598/plib_efc.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/efc/plib_efc.c  .generated_files/c002e599e308133b46ee26252a32d6aff4747101.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1230809598" 
	@${RM} ${OBJECTDIR}/_ext/1230809598/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230809598/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230809598/plib_efc.o.d" -o ${OBJECTDIR}/_ext/1230809598/plib_efc.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/efc/plib_efc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/499891906/plib_nvic.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c  .generated_files/8a78863a040dc80b6fe0f6b2850378d83d40cc6b.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/499891906" 
	@${RM} ${OBJECTDIR}/_ext/499891906/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/499891906/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/499891906/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/499891906/plib_nvic.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1230798922/plib_pio.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/pio/plib_pio.c  .generated_files/568e94a9f94bc7fe43fa58c978efa95088299623.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1230798922" 
	@${RM} ${OBJECTDIR}/_ext/1230798922/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230798922/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230798922/plib_pio.o.d" -o ${OBJECTDIR}/_ext/1230798922/plib_pio.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/pio/plib_pio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1230798490/plib_pwm0.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c  .generated_files/647babf8fe06ca15b502dcd2f38080fb8e6a91ac.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1230798490" 
	@${RM} ${OBJECTDIR}/_ext/1230798490/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230798490/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230798490/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/1230798490/plib_pwm0.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1676851931/plib_usart1.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart1.c  .generated_files/7b76f3a0163d55cbf80160b3302dc46de4aeb2f.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1676851931" 
	@${RM} ${OBJECTDIR}/_ext/1676851931/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1676851931/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1676851931/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/1676851931/plib_usart1.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1676851931/plib_usart0.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart0.c  .generated_files/90ec9a775bc625b15081c123e9227f4a712cc105.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1676851931" 
	@${RM} ${OBJECTDIR}/_ext/1676851931/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1676851931/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1676851931/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/1676851931/plib_usart0.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1676851931/plib_usart2.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart2.c  .generated_files/3500ca0ac668167d973347b08a621f8147936861.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1676851931" 
	@${RM} ${OBJECTDIR}/_ext/1676851931/plib_usart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1676851931/plib_usart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1676851931/plib_usart2.o.d" -o ${OBJECTDIR}/_ext/1676851931/plib_usart2.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart2.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/660803574/xc32_monitor.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/stdio/xc32_monitor.c  .generated_files/98e0537b7f5c571fc2e8cc21d653f5c764517894.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/660803574" 
	@${RM} ${OBJECTDIR}/_ext/660803574/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/660803574/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/660803574/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/660803574/xc32_monitor.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/stdio/xc32_monitor.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1140522603/sys_cache.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/cache/sys_cache.c  .generated_files/8a8570a93acaf8d8f1e19993a1db3859bd51e1a7.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1140522603" 
	@${RM} ${OBJECTDIR}/_ext/1140522603/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1140522603/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1140522603/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1140522603/sys_cache.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/cache/sys_cache.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1902723019/sys_dma.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/dma/sys_dma.c  .generated_files/b1e4be3f88107ec51772503a0524a00b162fdfe9.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1902723019" 
	@${RM} ${OBJECTDIR}/_ext/1902723019/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1902723019/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1902723019/sys_dma.o.d" -o ${OBJECTDIR}/_ext/1902723019/sys_dma.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/dma/sys_dma.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/590691607/sys_int.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/int/src/sys_int.c  .generated_files/de93168920aef39f26f3661e39bacc23903e22d9.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/590691607" 
	@${RM} ${OBJECTDIR}/_ext/590691607/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/590691607/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/590691607/sys_int.o.d" -o ${OBJECTDIR}/_ext/590691607/sys_int.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/int/src/sys_int.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406490940/initialization.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/initialization.c  .generated_files/1d094a2cd63492517207d37184d13cb2c515b825.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1406490940" 
	@${RM} ${OBJECTDIR}/_ext/1406490940/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406490940/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1406490940/initialization.o.d" -o ${OBJECTDIR}/_ext/1406490940/initialization.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/initialization.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406490940/interrupts.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/interrupts.c  .generated_files/e8e5035408ac8648284924b5ee7c1a22aaec8fc7.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1406490940" 
	@${RM} ${OBJECTDIR}/_ext/1406490940/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406490940/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1406490940/interrupts.o.d" -o ${OBJECTDIR}/_ext/1406490940/interrupts.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/interrupts.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406490940/exceptions.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/exceptions.c  .generated_files/43824b65baa4822947e1a4eb1abecdf84452c48f.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1406490940" 
	@${RM} ${OBJECTDIR}/_ext/1406490940/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406490940/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1406490940/exceptions.o.d" -o ${OBJECTDIR}/_ext/1406490940/exceptions.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/exceptions.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406490940/startup_xc32.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/startup_xc32.c  .generated_files/88652f895be3dc1d3e8a8ed300021f386a672c5c.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1406490940" 
	@${RM} ${OBJECTDIR}/_ext/1406490940/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406490940/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1406490940/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1406490940/startup_xc32.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/startup_xc32.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406490940/libc_syscalls.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/libc_syscalls.c  .generated_files/665a9d53adbfffa93c973e8a4137f5d20c37ae3.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1406490940" 
	@${RM} ${OBJECTDIR}/_ext/1406490940/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406490940/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1406490940/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1406490940/libc_syscalls.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/libc_syscalls.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406490940/freertos_hooks.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/freertos_hooks.c  .generated_files/60c9dd74d8689ae499d63779767c709a09a14573.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1406490940" 
	@${RM} ${OBJECTDIR}/_ext/1406490940/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406490940/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1406490940/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1406490940/freertos_hooks.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/freertos_hooks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406490940/tasks.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/tasks.c  .generated_files/6345f809e33d8cb47e4f9bcfbda0dfbb85a313c8.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1406490940" 
	@${RM} ${OBJECTDIR}/_ext/1406490940/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406490940/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1406490940/tasks.o.d" -o ${OBJECTDIR}/_ext/1406490940/tasks.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/259612183/port.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c  .generated_files/16eb80bf494b700080dfff44e85b6730578e765b.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/259612183" 
	@${RM} ${OBJECTDIR}/_ext/259612183/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/259612183/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/259612183/port.o.d" -o ${OBJECTDIR}/_ext/259612183/port.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/813600246/heap_1.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/bf6f08e3f9b5e2bd5be41c395de541f4e14a9e23.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/813600246" 
	@${RM} ${OBJECTDIR}/_ext/813600246/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/813600246/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/813600246/heap_1.o.d" -o ${OBJECTDIR}/_ext/813600246/heap_1.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/668082169/croutine.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/c00f912d7c0c6f8957df6eebb3847e0e814820c8.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/668082169" 
	@${RM} ${OBJECTDIR}/_ext/668082169/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/668082169/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/668082169/croutine.o.d" -o ${OBJECTDIR}/_ext/668082169/croutine.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/668082169/list.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/7f144beb24741e4bbe1de91b7f4caf260dea4fb7.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/668082169" 
	@${RM} ${OBJECTDIR}/_ext/668082169/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/668082169/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/668082169/list.o.d" -o ${OBJECTDIR}/_ext/668082169/list.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/668082169/queue.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/ab89c7162cc9b4f19b7d9bb86938d1b7f5fb78fb.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/668082169" 
	@${RM} ${OBJECTDIR}/_ext/668082169/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/668082169/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/668082169/queue.o.d" -o ${OBJECTDIR}/_ext/668082169/queue.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/668082169/FreeRTOS_tasks.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/f7d127d0974940ac832a60654971db35e0cda00.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/668082169" 
	@${RM} ${OBJECTDIR}/_ext/668082169/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/668082169/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/668082169/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/668082169/FreeRTOS_tasks.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/668082169/timers.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/c62eaf06614cbb17f608e03cdbe0f166f1ba48a1.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/668082169" 
	@${RM} ${OBJECTDIR}/_ext/668082169/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/668082169/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/668082169/timers.o.d" -o ${OBJECTDIR}/_ext/668082169/timers.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/668082169/event_groups.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/695d24272ebcb1e4bc1f28923e975375bfad7453.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/668082169" 
	@${RM} ${OBJECTDIR}/_ext/668082169/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/668082169/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/668082169/event_groups.o.d" -o ${OBJECTDIR}/_ext/668082169/event_groups.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/668082169/stream_buffer.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/44d8aef6ba2022cf7d2b782866c0b1cb0f40f25d.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/668082169" 
	@${RM} ${OBJECTDIR}/_ext/668082169/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/668082169/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/668082169/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/668082169/stream_buffer.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/main.o: ../../HarmonyProjects/MyProject_17/firmware/src/main.c  .generated_files/5083d8a8836c6bd07680fa9a3881124976835cc0.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/main.o.d" -o ${OBJECTDIR}/_ext/1206265640/main.o ../../HarmonyProjects/MyProject_17/firmware/src/main.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/anemometer.o: ../../HarmonyProjects/MyProject_17/firmware/src/anemometer.c  .generated_files/328c4ef6d88c85052d8410a8e5a35ac1621c4dce.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/anemometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/anemometer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/anemometer.o.d" -o ${OBJECTDIR}/_ext/1206265640/anemometer.o ../../HarmonyProjects/MyProject_17/firmware/src/anemometer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/IMU.o: ../../HarmonyProjects/MyProject_17/firmware/src/IMU.c  .generated_files/34a7e54f4c9864583e72f898d3ec757f3fff28b1.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/IMU.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/IMU.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/IMU.o.d" -o ${OBJECTDIR}/_ext/1206265640/IMU.o ../../HarmonyProjects/MyProject_17/firmware/src/IMU.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/app_communication.o: ../../HarmonyProjects/MyProject_17/firmware/src/app_communication.c  .generated_files/47bfc03bf0a3ecf8bb449ed9fa5bc53354b7df85.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/app_communication.o.d" -o ${OBJECTDIR}/_ext/1206265640/app_communication.o ../../HarmonyProjects/MyProject_17/firmware/src/app_communication.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/app_mast_control.o: ../../HarmonyProjects/MyProject_17/firmware/src/app_mast_control.c  .generated_files/44e5afe443252239570d32494fc34531e129e3a6.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_mast_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_mast_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/app_mast_control.o.d" -o ${OBJECTDIR}/_ext/1206265640/app_mast_control.o ../../HarmonyProjects/MyProject_17/firmware/src/app_mast_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/app_course_algorithm.o: ../../HarmonyProjects/MyProject_17/firmware/src/app_course_algorithm.c  .generated_files/eb64b40edacc9f375f6e1644ef2112227bb2371d.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_course_algorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_course_algorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/app_course_algorithm.o.d" -o ${OBJECTDIR}/_ext/1206265640/app_course_algorithm.o ../../HarmonyProjects/MyProject_17/firmware/src/app_course_algorithm.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/app_rudder_control.o: ../../HarmonyProjects/MyProject_17/firmware/src/app_rudder_control.c  .generated_files/7f05e983e1d1b54b6e5a7ed421b4662392ca37be.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_rudder_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_rudder_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/app_rudder_control.o.d" -o ${OBJECTDIR}/_ext/1206265640/app_rudder_control.o ../../HarmonyProjects/MyProject_17/firmware/src/app_rudder_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/app_anemometer.o: ../../HarmonyProjects/MyProject_17/firmware/src/app_anemometer.c  .generated_files/1bea86069206e31769aa75e8462ae739c0538d1d.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_anemometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_anemometer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/app_anemometer.o.d" -o ${OBJECTDIR}/_ext/1206265640/app_anemometer.o ../../HarmonyProjects/MyProject_17/firmware/src/app_anemometer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/app_gps.o: ../../HarmonyProjects/MyProject_17/firmware/src/app_gps.c  .generated_files/2cf1a2b8eff117c4a3dc778e4de05f60d515af.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_gps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_gps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/app_gps.o.d" -o ${OBJECTDIR}/_ext/1206265640/app_gps.o ../../HarmonyProjects/MyProject_17/firmware/src/app_gps.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/radio.o: ../../HarmonyProjects/MyProject_17/firmware/src/radio.c  .generated_files/8d369e3723b6f8bd5f06c6ec12183c543cf1cb04.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/radio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/radio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/radio.o.d" -o ${OBJECTDIR}/_ext/1206265640/radio.o ../../HarmonyProjects/MyProject_17/firmware/src/radio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/253009114/drv_usart.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/driver/usart/src/drv_usart.c  .generated_files/15a25605ae3496e1500686e2137319b77c98d242.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/253009114" 
	@${RM} ${OBJECTDIR}/_ext/253009114/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/253009114/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/253009114/drv_usart.o.d" -o ${OBJECTDIR}/_ext/253009114/drv_usart.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/driver/usart/src/drv_usart.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/298290690/osal_freertos.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/osal/osal_freertos.c  .generated_files/21f128a413fd3ee1328c1b7c5c0be37b314e7332.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/298290690" 
	@${RM} ${OBJECTDIR}/_ext/298290690/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/298290690/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298290690/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/298290690/osal_freertos.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/osal/osal_freertos.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1230811326/plib_clk.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/clk/plib_clk.c  .generated_files/eac7289d754c8ced62464e4b52fea1e784d0f6e8.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1230811326" 
	@${RM} ${OBJECTDIR}/_ext/1230811326/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230811326/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230811326/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1230811326/plib_clk.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/clk/plib_clk.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1230809598/plib_efc.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/efc/plib_efc.c  .generated_files/130e114a8fdac2095c2692673d7c21b689bac06c.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1230809598" 
	@${RM} ${OBJECTDIR}/_ext/1230809598/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230809598/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230809598/plib_efc.o.d" -o ${OBJECTDIR}/_ext/1230809598/plib_efc.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/efc/plib_efc.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/499891906/plib_nvic.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c  .generated_files/713dce9370aef8acb5364d09adb917caa2f4e35a.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/499891906" 
	@${RM} ${OBJECTDIR}/_ext/499891906/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/499891906/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/499891906/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/499891906/plib_nvic.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1230798922/plib_pio.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/pio/plib_pio.c  .generated_files/c657b1a7b4b6180f98f9ed9f8f4395939ff76ba6.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1230798922" 
	@${RM} ${OBJECTDIR}/_ext/1230798922/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230798922/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230798922/plib_pio.o.d" -o ${OBJECTDIR}/_ext/1230798922/plib_pio.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/pio/plib_pio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1230798490/plib_pwm0.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c  .generated_files/9caf63e4a4c331167785bfac97f4c403867ff2ba.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1230798490" 
	@${RM} ${OBJECTDIR}/_ext/1230798490/plib_pwm0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1230798490/plib_pwm0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1230798490/plib_pwm0.o.d" -o ${OBJECTDIR}/_ext/1230798490/plib_pwm0.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/pwm/plib_pwm0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1676851931/plib_usart1.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart1.c  .generated_files/5cb32c45d37c34395f58823bb0e43d893e4c2639.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1676851931" 
	@${RM} ${OBJECTDIR}/_ext/1676851931/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1676851931/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1676851931/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/1676851931/plib_usart1.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1676851931/plib_usart0.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart0.c  .generated_files/7c082eb12ee61508c3706f7fc0cfb87c9499af27.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1676851931" 
	@${RM} ${OBJECTDIR}/_ext/1676851931/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1676851931/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1676851931/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/1676851931/plib_usart0.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart0.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1676851931/plib_usart2.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart2.c  .generated_files/87ebd7a6e65fe06075ac3ac9b3af50c907788f8e.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1676851931" 
	@${RM} ${OBJECTDIR}/_ext/1676851931/plib_usart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1676851931/plib_usart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1676851931/plib_usart2.o.d" -o ${OBJECTDIR}/_ext/1676851931/plib_usart2.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/peripheral/usart/plib_usart2.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/660803574/xc32_monitor.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/stdio/xc32_monitor.c  .generated_files/a9ba14d190aeb52e2eea1476c75455fe0c049dd0.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/660803574" 
	@${RM} ${OBJECTDIR}/_ext/660803574/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/660803574/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/660803574/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/660803574/xc32_monitor.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/stdio/xc32_monitor.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1140522603/sys_cache.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/cache/sys_cache.c  .generated_files/5a3455a28619aa0ac7bdad8b0273f87ab2bc95eb.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1140522603" 
	@${RM} ${OBJECTDIR}/_ext/1140522603/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1140522603/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1140522603/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1140522603/sys_cache.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/cache/sys_cache.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1902723019/sys_dma.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/dma/sys_dma.c  .generated_files/d374df65eb9604cf133538318885b7548f4e9228.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1902723019" 
	@${RM} ${OBJECTDIR}/_ext/1902723019/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1902723019/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1902723019/sys_dma.o.d" -o ${OBJECTDIR}/_ext/1902723019/sys_dma.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/dma/sys_dma.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/590691607/sys_int.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/int/src/sys_int.c  .generated_files/c2f0d34834d724d5f48b12310198eaf33cf29908.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/590691607" 
	@${RM} ${OBJECTDIR}/_ext/590691607/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/590691607/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/590691607/sys_int.o.d" -o ${OBJECTDIR}/_ext/590691607/sys_int.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/system/int/src/sys_int.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406490940/initialization.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/initialization.c  .generated_files/329d9c2bd5a90b8bcdac419112533bc279fda058.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1406490940" 
	@${RM} ${OBJECTDIR}/_ext/1406490940/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406490940/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1406490940/initialization.o.d" -o ${OBJECTDIR}/_ext/1406490940/initialization.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/initialization.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406490940/interrupts.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/interrupts.c  .generated_files/76917fe46c92f6450469b1760e89b596f3b26eee.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1406490940" 
	@${RM} ${OBJECTDIR}/_ext/1406490940/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406490940/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1406490940/interrupts.o.d" -o ${OBJECTDIR}/_ext/1406490940/interrupts.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/interrupts.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406490940/exceptions.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/exceptions.c  .generated_files/37dbbc2da57a736c49d1d247c98ff49c42de32c9.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1406490940" 
	@${RM} ${OBJECTDIR}/_ext/1406490940/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406490940/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1406490940/exceptions.o.d" -o ${OBJECTDIR}/_ext/1406490940/exceptions.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/exceptions.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406490940/startup_xc32.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/startup_xc32.c  .generated_files/7acf1971022780b8e9db8ae1bb5493a8966effa6.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1406490940" 
	@${RM} ${OBJECTDIR}/_ext/1406490940/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406490940/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1406490940/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1406490940/startup_xc32.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/startup_xc32.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406490940/libc_syscalls.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/libc_syscalls.c  .generated_files/ce035b8dddd18494cc45d6ca625adbdcb0cd8108.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1406490940" 
	@${RM} ${OBJECTDIR}/_ext/1406490940/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406490940/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1406490940/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1406490940/libc_syscalls.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/libc_syscalls.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406490940/freertos_hooks.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/freertos_hooks.c  .generated_files/4b53c26d78fdc8454e05f297f3bb4e8166b7daa7.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1406490940" 
	@${RM} ${OBJECTDIR}/_ext/1406490940/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406490940/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1406490940/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1406490940/freertos_hooks.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/freertos_hooks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406490940/tasks.o: ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/tasks.c  .generated_files/ab7aba2c7f835152133b7e5092e4c442702cdaa1.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1406490940" 
	@${RM} ${OBJECTDIR}/_ext/1406490940/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406490940/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1406490940/tasks.o.d" -o ${OBJECTDIR}/_ext/1406490940/tasks.o ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/259612183/port.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c  .generated_files/cc10c45c73f5a0ac92ef47cd8a26f879edc8cd09.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/259612183" 
	@${RM} ${OBJECTDIR}/_ext/259612183/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/259612183/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/259612183/port.o.d" -o ${OBJECTDIR}/_ext/259612183/port.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7/port.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/813600246/heap_1.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/745e04685d151a5f14caedc9eec1fe99e4eb82ae.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/813600246" 
	@${RM} ${OBJECTDIR}/_ext/813600246/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/813600246/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/813600246/heap_1.o.d" -o ${OBJECTDIR}/_ext/813600246/heap_1.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/668082169/croutine.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/facc8592af35714f9fdbc39d1086b6fb83dd5cff.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/668082169" 
	@${RM} ${OBJECTDIR}/_ext/668082169/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/668082169/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/668082169/croutine.o.d" -o ${OBJECTDIR}/_ext/668082169/croutine.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/668082169/list.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/2bd28916c1790de62834bc5abbab7b2b1de4f294.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/668082169" 
	@${RM} ${OBJECTDIR}/_ext/668082169/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/668082169/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/668082169/list.o.d" -o ${OBJECTDIR}/_ext/668082169/list.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/668082169/queue.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/e948de91902e8890540749866d7d322963a50609.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/668082169" 
	@${RM} ${OBJECTDIR}/_ext/668082169/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/668082169/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/668082169/queue.o.d" -o ${OBJECTDIR}/_ext/668082169/queue.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/668082169/FreeRTOS_tasks.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/5b89bc858ae4d13e9a92bd1e7fef71abf8ab56c4.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/668082169" 
	@${RM} ${OBJECTDIR}/_ext/668082169/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/668082169/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/668082169/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/668082169/FreeRTOS_tasks.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/668082169/timers.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/3feadb3f86f3e8bc6a4b824f8e7051fa167d6c2b.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/668082169" 
	@${RM} ${OBJECTDIR}/_ext/668082169/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/668082169/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/668082169/timers.o.d" -o ${OBJECTDIR}/_ext/668082169/timers.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/668082169/event_groups.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/47215d41fa424dc183f280221c3437d41168225e.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/668082169" 
	@${RM} ${OBJECTDIR}/_ext/668082169/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/668082169/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/668082169/event_groups.o.d" -o ${OBJECTDIR}/_ext/668082169/event_groups.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/668082169/stream_buffer.o: ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/f6b4dd8646e998b6b26037a7ede877f9b48259a6.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/668082169" 
	@${RM} ${OBJECTDIR}/_ext/668082169/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/668082169/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/668082169/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/668082169/stream_buffer.o ../../HarmonyProjects/MyProject_17/firmware/src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/main.o: ../../HarmonyProjects/MyProject_17/firmware/src/main.c  .generated_files/8bd05addac023680806f70fb208b6ca674895ece.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/main.o.d" -o ${OBJECTDIR}/_ext/1206265640/main.o ../../HarmonyProjects/MyProject_17/firmware/src/main.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/anemometer.o: ../../HarmonyProjects/MyProject_17/firmware/src/anemometer.c  .generated_files/c4079bc77ba4c0d7f446ff414649f78e049cddcb.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/anemometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/anemometer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/anemometer.o.d" -o ${OBJECTDIR}/_ext/1206265640/anemometer.o ../../HarmonyProjects/MyProject_17/firmware/src/anemometer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/IMU.o: ../../HarmonyProjects/MyProject_17/firmware/src/IMU.c  .generated_files/bbf96c9270888678459396458bb72bac831e998f.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/IMU.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/IMU.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/IMU.o.d" -o ${OBJECTDIR}/_ext/1206265640/IMU.o ../../HarmonyProjects/MyProject_17/firmware/src/IMU.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/app_communication.o: ../../HarmonyProjects/MyProject_17/firmware/src/app_communication.c  .generated_files/3f17dda4c1893e6c470b3e6bb8df275be2621c59.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/app_communication.o.d" -o ${OBJECTDIR}/_ext/1206265640/app_communication.o ../../HarmonyProjects/MyProject_17/firmware/src/app_communication.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/app_mast_control.o: ../../HarmonyProjects/MyProject_17/firmware/src/app_mast_control.c  .generated_files/3d4e448b54bb589194757b87951ac6173093931a.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_mast_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_mast_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/app_mast_control.o.d" -o ${OBJECTDIR}/_ext/1206265640/app_mast_control.o ../../HarmonyProjects/MyProject_17/firmware/src/app_mast_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/app_course_algorithm.o: ../../HarmonyProjects/MyProject_17/firmware/src/app_course_algorithm.c  .generated_files/d1f12e6453e63cefac9c6dfaf59078fbdcb88f19.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_course_algorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_course_algorithm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/app_course_algorithm.o.d" -o ${OBJECTDIR}/_ext/1206265640/app_course_algorithm.o ../../HarmonyProjects/MyProject_17/firmware/src/app_course_algorithm.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/app_rudder_control.o: ../../HarmonyProjects/MyProject_17/firmware/src/app_rudder_control.c  .generated_files/f2b88951a927d015cc4e1be425ff0f67917b9d10.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_rudder_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_rudder_control.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/app_rudder_control.o.d" -o ${OBJECTDIR}/_ext/1206265640/app_rudder_control.o ../../HarmonyProjects/MyProject_17/firmware/src/app_rudder_control.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/app_anemometer.o: ../../HarmonyProjects/MyProject_17/firmware/src/app_anemometer.c  .generated_files/b6bca5a9bfc9ee132914b277e6064dfd707a98a7.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_anemometer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_anemometer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/app_anemometer.o.d" -o ${OBJECTDIR}/_ext/1206265640/app_anemometer.o ../../HarmonyProjects/MyProject_17/firmware/src/app_anemometer.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/app_gps.o: ../../HarmonyProjects/MyProject_17/firmware/src/app_gps.c  .generated_files/3920be7843a3aad6bd81e733030f8babeaada88a.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_gps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/app_gps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/app_gps.o.d" -o ${OBJECTDIR}/_ext/1206265640/app_gps.o ../../HarmonyProjects/MyProject_17/firmware/src/app_gps.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1206265640/radio.o: ../../HarmonyProjects/MyProject_17/firmware/src/radio.c  .generated_files/a2270065717d19fe39aa40fcb76d8b0cbf223da7.flag .generated_files/cb304a302b4eee5e4fae263efcd94ef0c897a6af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1206265640" 
	@${RM} ${OBJECTDIR}/_ext/1206265640/radio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1206265640/radio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/sam_e70_xult" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/CM7" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1206265640/radio.o.d" -o ${OBJECTDIR}/_ext/1206265640/radio.o ../../HarmonyProjects/MyProject_17/firmware/src/radio.c    -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/SailBoatProgramGit.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/ATSAME70Q21B.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/SailBoatProgramGit.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/same70b"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/SailBoatProgramGit.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../HarmonyProjects/MyProject_17/firmware/src/config/sam_e70_xult/ATSAME70Q21B.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/SailBoatProgramGit.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_e70_xult=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/same70b"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/SailBoatProgramGit.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
