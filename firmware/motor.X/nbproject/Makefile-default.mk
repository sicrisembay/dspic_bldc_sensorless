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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/motor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/motor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../app/bldc/bldc.c ../app/driver/drv_timer.c ../app/driver/drv_adc.c ../app/driver/drv_pwm.c ../app/driver/drv_uart.c ../app/freertos/hook.c ../app/pcIntf/pc_interface.c ../app/utility/filter/util_filter.c ../app/utility/util_trace.c ../app/main.c ../third_party/FreeRTOS/portable/MemMang/heap_1.c ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S ../third_party/FreeRTOS/croutine.c ../third_party/FreeRTOS/event_groups.c ../third_party/FreeRTOS/list.c ../third_party/FreeRTOS/queue.c ../third_party/FreeRTOS/stream_buffer.c ../third_party/FreeRTOS/tasks.c ../third_party/FreeRTOS/timers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/566887654/bldc.o ${OBJECTDIR}/_ext/618841211/drv_timer.o ${OBJECTDIR}/_ext/618841211/drv_adc.o ${OBJECTDIR}/_ext/618841211/drv_pwm.o ${OBJECTDIR}/_ext/618841211/drv_uart.o ${OBJECTDIR}/_ext/1354880047/hook.o ${OBJECTDIR}/_ext/290104761/pc_interface.o ${OBJECTDIR}/_ext/998514728/util_filter.o ${OBJECTDIR}/_ext/255416751/util_trace.o ${OBJECTDIR}/_ext/1360919890/main.o ${OBJECTDIR}/_ext/1859827547/heap_1.o ${OBJECTDIR}/_ext/485308804/port.o ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o ${OBJECTDIR}/_ext/1051866110/croutine.o ${OBJECTDIR}/_ext/1051866110/event_groups.o ${OBJECTDIR}/_ext/1051866110/list.o ${OBJECTDIR}/_ext/1051866110/queue.o ${OBJECTDIR}/_ext/1051866110/stream_buffer.o ${OBJECTDIR}/_ext/1051866110/tasks.o ${OBJECTDIR}/_ext/1051866110/timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/566887654/bldc.o.d ${OBJECTDIR}/_ext/618841211/drv_timer.o.d ${OBJECTDIR}/_ext/618841211/drv_adc.o.d ${OBJECTDIR}/_ext/618841211/drv_pwm.o.d ${OBJECTDIR}/_ext/618841211/drv_uart.o.d ${OBJECTDIR}/_ext/1354880047/hook.o.d ${OBJECTDIR}/_ext/290104761/pc_interface.o.d ${OBJECTDIR}/_ext/998514728/util_filter.o.d ${OBJECTDIR}/_ext/255416751/util_trace.o.d ${OBJECTDIR}/_ext/1360919890/main.o.d ${OBJECTDIR}/_ext/1859827547/heap_1.o.d ${OBJECTDIR}/_ext/485308804/port.o.d ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o.d ${OBJECTDIR}/_ext/1051866110/croutine.o.d ${OBJECTDIR}/_ext/1051866110/event_groups.o.d ${OBJECTDIR}/_ext/1051866110/list.o.d ${OBJECTDIR}/_ext/1051866110/queue.o.d ${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d ${OBJECTDIR}/_ext/1051866110/tasks.o.d ${OBJECTDIR}/_ext/1051866110/timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/566887654/bldc.o ${OBJECTDIR}/_ext/618841211/drv_timer.o ${OBJECTDIR}/_ext/618841211/drv_adc.o ${OBJECTDIR}/_ext/618841211/drv_pwm.o ${OBJECTDIR}/_ext/618841211/drv_uart.o ${OBJECTDIR}/_ext/1354880047/hook.o ${OBJECTDIR}/_ext/290104761/pc_interface.o ${OBJECTDIR}/_ext/998514728/util_filter.o ${OBJECTDIR}/_ext/255416751/util_trace.o ${OBJECTDIR}/_ext/1360919890/main.o ${OBJECTDIR}/_ext/1859827547/heap_1.o ${OBJECTDIR}/_ext/485308804/port.o ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o ${OBJECTDIR}/_ext/1051866110/croutine.o ${OBJECTDIR}/_ext/1051866110/event_groups.o ${OBJECTDIR}/_ext/1051866110/list.o ${OBJECTDIR}/_ext/1051866110/queue.o ${OBJECTDIR}/_ext/1051866110/stream_buffer.o ${OBJECTDIR}/_ext/1051866110/tasks.o ${OBJECTDIR}/_ext/1051866110/timers.o

# Source Files
SOURCEFILES=../app/bldc/bldc.c ../app/driver/drv_timer.c ../app/driver/drv_adc.c ../app/driver/drv_pwm.c ../app/driver/drv_uart.c ../app/freertos/hook.c ../app/pcIntf/pc_interface.c ../app/utility/filter/util_filter.c ../app/utility/util_trace.c ../app/main.c ../third_party/FreeRTOS/portable/MemMang/heap_1.c ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S ../third_party/FreeRTOS/croutine.c ../third_party/FreeRTOS/event_groups.c ../third_party/FreeRTOS/list.c ../third_party/FreeRTOS/queue.c ../third_party/FreeRTOS/stream_buffer.c ../third_party/FreeRTOS/tasks.c ../third_party/FreeRTOS/timers.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/motor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ128MC706A
MP_LINKER_FILE_OPTION=,--script=p33FJ128MC706A.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/566887654/bldc.o: ../app/bldc/bldc.c  .generated_files/2f9ef175e7232e594b632d80c63c70fdb915c61c.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/566887654" 
	@${RM} ${OBJECTDIR}/_ext/566887654/bldc.o.d 
	@${RM} ${OBJECTDIR}/_ext/566887654/bldc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/bldc/bldc.c  -o ${OBJECTDIR}/_ext/566887654/bldc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/566887654/bldc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_timer.o: ../app/driver/drv_timer.c  .generated_files/bd63178bedbab2eb1fe938c4aa4882a63f013931.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_timer.c  -o ${OBJECTDIR}/_ext/618841211/drv_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_timer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_adc.o: ../app/driver/drv_adc.c  .generated_files/a432bafe8804aceefb63a949c747a4524bef28ee.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_adc.c  -o ${OBJECTDIR}/_ext/618841211/drv_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_adc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_pwm.o: ../app/driver/drv_pwm.c  .generated_files/c1687719c95f523d11bde5451d0def7ae140e38a.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_pwm.c  -o ${OBJECTDIR}/_ext/618841211/drv_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_pwm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_uart.o: ../app/driver/drv_uart.c  .generated_files/5d209b3e2714388646cac3bc8f1e7ae7505d2a39.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_uart.c  -o ${OBJECTDIR}/_ext/618841211/drv_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_uart.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1354880047/hook.o: ../app/freertos/hook.c  .generated_files/eb70d935fbf18ca80eb093d047e22a911002f7df.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1354880047" 
	@${RM} ${OBJECTDIR}/_ext/1354880047/hook.o.d 
	@${RM} ${OBJECTDIR}/_ext/1354880047/hook.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/freertos/hook.c  -o ${OBJECTDIR}/_ext/1354880047/hook.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1354880047/hook.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/290104761/pc_interface.o: ../app/pcIntf/pc_interface.c  .generated_files/a1c58b23231e5ba680fe7678dae5a2da46c96bc7.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/290104761" 
	@${RM} ${OBJECTDIR}/_ext/290104761/pc_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/290104761/pc_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/pcIntf/pc_interface.c  -o ${OBJECTDIR}/_ext/290104761/pc_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/290104761/pc_interface.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/998514728/util_filter.o: ../app/utility/filter/util_filter.c  .generated_files/982b925aa0bc7257a3c6272cca2d5f1cd91e7596.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/998514728" 
	@${RM} ${OBJECTDIR}/_ext/998514728/util_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/998514728/util_filter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/utility/filter/util_filter.c  -o ${OBJECTDIR}/_ext/998514728/util_filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/998514728/util_filter.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/255416751/util_trace.o: ../app/utility/util_trace.c  .generated_files/338360270c7e27351d605bf90f4340861cf07449.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/255416751" 
	@${RM} ${OBJECTDIR}/_ext/255416751/util_trace.o.d 
	@${RM} ${OBJECTDIR}/_ext/255416751/util_trace.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/utility/util_trace.c  -o ${OBJECTDIR}/_ext/255416751/util_trace.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/255416751/util_trace.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360919890/main.o: ../app/main.c  .generated_files/35c68860cc33f757fa60ad35e672f21ff00f1084.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/main.c  -o ${OBJECTDIR}/_ext/1360919890/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1859827547/heap_1.o: ../third_party/FreeRTOS/portable/MemMang/heap_1.c  .generated_files/f6290f429f7edb89254c5df860bb59cf52e1a41.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1859827547" 
	@${RM} ${OBJECTDIR}/_ext/1859827547/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1859827547/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/_ext/1859827547/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1859827547/heap_1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/485308804/port.o: ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  .generated_files/8041b7ad2fa314fb75ec5c843945d0a7b033d632.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/485308804" 
	@${RM} ${OBJECTDIR}/_ext/485308804/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/485308804/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/485308804/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/485308804/port.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/croutine.o: ../third_party/FreeRTOS/croutine.c  .generated_files/7ad2245fc0dbf9f44c16732562f7aa206a2a0f7f.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/croutine.c  -o ${OBJECTDIR}/_ext/1051866110/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/croutine.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/event_groups.o: ../third_party/FreeRTOS/event_groups.c  .generated_files/92e4bad138535642fb6adc1e9b4999ded8e1d00a.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/event_groups.c  -o ${OBJECTDIR}/_ext/1051866110/event_groups.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/event_groups.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/list.o: ../third_party/FreeRTOS/list.c  .generated_files/b7df4815ebf8b296954cba1d53d98802bf092b9b.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/list.c  -o ${OBJECTDIR}/_ext/1051866110/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/list.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/queue.o: ../third_party/FreeRTOS/queue.c  .generated_files/8c14edb50d11a019d2d9f1434546f697d7b8a620.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/queue.c  -o ${OBJECTDIR}/_ext/1051866110/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/queue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/stream_buffer.o: ../third_party/FreeRTOS/stream_buffer.c  .generated_files/d2b0d461a6fd84d8e772b7ec3ef3c64051f8eda4.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/stream_buffer.c  -o ${OBJECTDIR}/_ext/1051866110/stream_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/tasks.o: ../third_party/FreeRTOS/tasks.c  .generated_files/8e0e2004b95cc71c088a3b1a1d7c3e87e36e0f53.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/tasks.c  -o ${OBJECTDIR}/_ext/1051866110/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/tasks.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/timers.o: ../third_party/FreeRTOS/timers.c  .generated_files/e976040c30b162b25bb32a971f831814b4010f65.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/timers.c  -o ${OBJECTDIR}/_ext/1051866110/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/timers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/566887654/bldc.o: ../app/bldc/bldc.c  .generated_files/54f0c5cfb755e78578fcbbaef7cd0f755b983756.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/566887654" 
	@${RM} ${OBJECTDIR}/_ext/566887654/bldc.o.d 
	@${RM} ${OBJECTDIR}/_ext/566887654/bldc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/bldc/bldc.c  -o ${OBJECTDIR}/_ext/566887654/bldc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/566887654/bldc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_timer.o: ../app/driver/drv_timer.c  .generated_files/a58a4628371c8a62df2d5fefa536a38434089db5.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_timer.c  -o ${OBJECTDIR}/_ext/618841211/drv_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_timer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_adc.o: ../app/driver/drv_adc.c  .generated_files/ac9403baa6d6778dd6e51ebe6aff7e44342419a8.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_adc.c  -o ${OBJECTDIR}/_ext/618841211/drv_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_adc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_pwm.o: ../app/driver/drv_pwm.c  .generated_files/78e9fe05677f2ae66e9a3149718abb2c700abc98.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_pwm.c  -o ${OBJECTDIR}/_ext/618841211/drv_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_pwm.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_uart.o: ../app/driver/drv_uart.c  .generated_files/c3f5ecd265946324de9867cbde8cf4eb3e79a504.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_uart.c  -o ${OBJECTDIR}/_ext/618841211/drv_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_uart.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1354880047/hook.o: ../app/freertos/hook.c  .generated_files/9df7486069d01eb54e91b41f1a5ec9289b7347bc.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1354880047" 
	@${RM} ${OBJECTDIR}/_ext/1354880047/hook.o.d 
	@${RM} ${OBJECTDIR}/_ext/1354880047/hook.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/freertos/hook.c  -o ${OBJECTDIR}/_ext/1354880047/hook.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1354880047/hook.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/290104761/pc_interface.o: ../app/pcIntf/pc_interface.c  .generated_files/eaaea2192a8f90c85dd5b354db7e6347412363b9.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/290104761" 
	@${RM} ${OBJECTDIR}/_ext/290104761/pc_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/290104761/pc_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/pcIntf/pc_interface.c  -o ${OBJECTDIR}/_ext/290104761/pc_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/290104761/pc_interface.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/998514728/util_filter.o: ../app/utility/filter/util_filter.c  .generated_files/4e9cd0060fd07c05b0e9333228fd1fb0060fafd1.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/998514728" 
	@${RM} ${OBJECTDIR}/_ext/998514728/util_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/998514728/util_filter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/utility/filter/util_filter.c  -o ${OBJECTDIR}/_ext/998514728/util_filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/998514728/util_filter.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/255416751/util_trace.o: ../app/utility/util_trace.c  .generated_files/b2f6dda27916a703dce06624dbed0ac8edb92eab.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/255416751" 
	@${RM} ${OBJECTDIR}/_ext/255416751/util_trace.o.d 
	@${RM} ${OBJECTDIR}/_ext/255416751/util_trace.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/utility/util_trace.c  -o ${OBJECTDIR}/_ext/255416751/util_trace.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/255416751/util_trace.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360919890/main.o: ../app/main.c  .generated_files/d7b7ad27ad7e6b6c1bbb53f986b4ad29964133a3.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/main.c  -o ${OBJECTDIR}/_ext/1360919890/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1859827547/heap_1.o: ../third_party/FreeRTOS/portable/MemMang/heap_1.c  .generated_files/7c0bf92db60e66a2fa9b1860975d210fea17bd03.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1859827547" 
	@${RM} ${OBJECTDIR}/_ext/1859827547/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1859827547/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/_ext/1859827547/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1859827547/heap_1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/485308804/port.o: ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  .generated_files/f88558f063f2848996126eb45fd720ca6922467d.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/485308804" 
	@${RM} ${OBJECTDIR}/_ext/485308804/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/485308804/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/485308804/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/485308804/port.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/croutine.o: ../third_party/FreeRTOS/croutine.c  .generated_files/c2856b3799915e2365420d040045015c248a3c5b.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/croutine.c  -o ${OBJECTDIR}/_ext/1051866110/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/croutine.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/event_groups.o: ../third_party/FreeRTOS/event_groups.c  .generated_files/e4f924f48c7d5a38d71ea02dd92d9a4218f10d34.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/event_groups.c  -o ${OBJECTDIR}/_ext/1051866110/event_groups.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/event_groups.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/list.o: ../third_party/FreeRTOS/list.c  .generated_files/a85fe2d9c00a8cb1a3873ebb968340b8b812f5ff.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/list.c  -o ${OBJECTDIR}/_ext/1051866110/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/list.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/queue.o: ../third_party/FreeRTOS/queue.c  .generated_files/1fc0a187bb67545d4e6b539300759e56b784859.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/queue.c  -o ${OBJECTDIR}/_ext/1051866110/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/queue.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/stream_buffer.o: ../third_party/FreeRTOS/stream_buffer.c  .generated_files/c5890296ffd0588d1ad92c31733bef73dfeff287.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/stream_buffer.c  -o ${OBJECTDIR}/_ext/1051866110/stream_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/tasks.o: ../third_party/FreeRTOS/tasks.c  .generated_files/d4514659fa7066ec6fcece1d22be45df4904fb99.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/tasks.c  -o ${OBJECTDIR}/_ext/1051866110/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/tasks.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/timers.o: ../third_party/FreeRTOS/timers.c  .generated_files/c863b1f93c542e3ed23ee3a87fb3ea7fd4497308.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/timers.c  -o ${OBJECTDIR}/_ext/1051866110/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/timers.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o: ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  .generated_files/f978c2975b401ad4cc9a954feadbde9f3bc42d40.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/485308804" 
	@${RM} ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o.d 
	@${RM} ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  -o ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o: ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  .generated_files/be1d53825770939eabcc8666cfe388d6d23ab701.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/485308804" 
	@${RM} ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o.d 
	@${RM} ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  -o ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/motor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  C:/Program\ Files/Microchip/xc16/v1.61/lib/libq-dsp-elf.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/motor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    "C:\Program Files\Microchip\xc16\v1.61\lib\libq-dsp-elf.a"  -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-lq$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/motor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  C:/Program\ Files/Microchip/xc16/v1.61/lib/libq-dsp-elf.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/motor.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    "C:\Program Files\Microchip\xc16\v1.61\lib\libq-dsp-elf.a"  -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-lq$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/motor.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
