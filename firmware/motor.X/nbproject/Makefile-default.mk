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
SOURCEFILES_QUOTED_IF_SPACED=../app/bldc/bldc.c ../app/driver/drv_timer.c ../app/driver/drv_adc.c ../app/freertos/hook.c ../app/utility/filter/util_filter.c ../app/utility/util_trace.c ../app/main.c ../third_party/FreeRTOS/portable/MemMang/heap_1.c ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S ../third_party/FreeRTOS/croutine.c ../third_party/FreeRTOS/event_groups.c ../third_party/FreeRTOS/list.c ../third_party/FreeRTOS/queue.c ../third_party/FreeRTOS/stream_buffer.c ../third_party/FreeRTOS/tasks.c ../third_party/FreeRTOS/timers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/566887654/bldc.o ${OBJECTDIR}/_ext/618841211/drv_timer.o ${OBJECTDIR}/_ext/618841211/drv_adc.o ${OBJECTDIR}/_ext/1354880047/hook.o ${OBJECTDIR}/_ext/998514728/util_filter.o ${OBJECTDIR}/_ext/255416751/util_trace.o ${OBJECTDIR}/_ext/1360919890/main.o ${OBJECTDIR}/_ext/1859827547/heap_1.o ${OBJECTDIR}/_ext/485308804/port.o ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o ${OBJECTDIR}/_ext/1051866110/croutine.o ${OBJECTDIR}/_ext/1051866110/event_groups.o ${OBJECTDIR}/_ext/1051866110/list.o ${OBJECTDIR}/_ext/1051866110/queue.o ${OBJECTDIR}/_ext/1051866110/stream_buffer.o ${OBJECTDIR}/_ext/1051866110/tasks.o ${OBJECTDIR}/_ext/1051866110/timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/566887654/bldc.o.d ${OBJECTDIR}/_ext/618841211/drv_timer.o.d ${OBJECTDIR}/_ext/618841211/drv_adc.o.d ${OBJECTDIR}/_ext/1354880047/hook.o.d ${OBJECTDIR}/_ext/998514728/util_filter.o.d ${OBJECTDIR}/_ext/255416751/util_trace.o.d ${OBJECTDIR}/_ext/1360919890/main.o.d ${OBJECTDIR}/_ext/1859827547/heap_1.o.d ${OBJECTDIR}/_ext/485308804/port.o.d ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o.d ${OBJECTDIR}/_ext/1051866110/croutine.o.d ${OBJECTDIR}/_ext/1051866110/event_groups.o.d ${OBJECTDIR}/_ext/1051866110/list.o.d ${OBJECTDIR}/_ext/1051866110/queue.o.d ${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d ${OBJECTDIR}/_ext/1051866110/tasks.o.d ${OBJECTDIR}/_ext/1051866110/timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/566887654/bldc.o ${OBJECTDIR}/_ext/618841211/drv_timer.o ${OBJECTDIR}/_ext/618841211/drv_adc.o ${OBJECTDIR}/_ext/1354880047/hook.o ${OBJECTDIR}/_ext/998514728/util_filter.o ${OBJECTDIR}/_ext/255416751/util_trace.o ${OBJECTDIR}/_ext/1360919890/main.o ${OBJECTDIR}/_ext/1859827547/heap_1.o ${OBJECTDIR}/_ext/485308804/port.o ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o ${OBJECTDIR}/_ext/1051866110/croutine.o ${OBJECTDIR}/_ext/1051866110/event_groups.o ${OBJECTDIR}/_ext/1051866110/list.o ${OBJECTDIR}/_ext/1051866110/queue.o ${OBJECTDIR}/_ext/1051866110/stream_buffer.o ${OBJECTDIR}/_ext/1051866110/tasks.o ${OBJECTDIR}/_ext/1051866110/timers.o

# Source Files
SOURCEFILES=../app/bldc/bldc.c ../app/driver/drv_timer.c ../app/driver/drv_adc.c ../app/freertos/hook.c ../app/utility/filter/util_filter.c ../app/utility/util_trace.c ../app/main.c ../third_party/FreeRTOS/portable/MemMang/heap_1.c ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S ../third_party/FreeRTOS/croutine.c ../third_party/FreeRTOS/event_groups.c ../third_party/FreeRTOS/list.c ../third_party/FreeRTOS/queue.c ../third_party/FreeRTOS/stream_buffer.c ../third_party/FreeRTOS/tasks.c ../third_party/FreeRTOS/timers.c



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
${OBJECTDIR}/_ext/566887654/bldc.o: ../app/bldc/bldc.c  .generated_files/cf22b32684ea8b9eda6af41c98c46f24a9ab138b.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/566887654" 
	@${RM} ${OBJECTDIR}/_ext/566887654/bldc.o.d 
	@${RM} ${OBJECTDIR}/_ext/566887654/bldc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/bldc/bldc.c  -o ${OBJECTDIR}/_ext/566887654/bldc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/566887654/bldc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_timer.o: ../app/driver/drv_timer.c  .generated_files/8a590347ae48b0510ec7c48b2f73882adb8e7fea.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_timer.c  -o ${OBJECTDIR}/_ext/618841211/drv_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_timer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_adc.o: ../app/driver/drv_adc.c  .generated_files/b0d4285ac7c839bb8de502f31c5b5da9dbfd9f46.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_adc.c  -o ${OBJECTDIR}/_ext/618841211/drv_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_adc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1354880047/hook.o: ../app/freertos/hook.c  .generated_files/dcb76db2a335b0309f8504716d2e9a11dfa3426e.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1354880047" 
	@${RM} ${OBJECTDIR}/_ext/1354880047/hook.o.d 
	@${RM} ${OBJECTDIR}/_ext/1354880047/hook.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/freertos/hook.c  -o ${OBJECTDIR}/_ext/1354880047/hook.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1354880047/hook.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/998514728/util_filter.o: ../app/utility/filter/util_filter.c  .generated_files/9177e01eb04abec9719af9f54984303e08ed45b8.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/998514728" 
	@${RM} ${OBJECTDIR}/_ext/998514728/util_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/998514728/util_filter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/utility/filter/util_filter.c  -o ${OBJECTDIR}/_ext/998514728/util_filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/998514728/util_filter.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/255416751/util_trace.o: ../app/utility/util_trace.c  .generated_files/75da76ede7ed4e74e18e8e39bd67ad143d9f9f9c.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/255416751" 
	@${RM} ${OBJECTDIR}/_ext/255416751/util_trace.o.d 
	@${RM} ${OBJECTDIR}/_ext/255416751/util_trace.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/utility/util_trace.c  -o ${OBJECTDIR}/_ext/255416751/util_trace.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/255416751/util_trace.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360919890/main.o: ../app/main.c  .generated_files/c1f9e9c8485927a2be6f68e2ca7f426dd05a0d59.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/main.c  -o ${OBJECTDIR}/_ext/1360919890/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1859827547/heap_1.o: ../third_party/FreeRTOS/portable/MemMang/heap_1.c  .generated_files/1ed9c78c60413473e30b26455e030bc50e5228de.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1859827547" 
	@${RM} ${OBJECTDIR}/_ext/1859827547/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1859827547/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/_ext/1859827547/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1859827547/heap_1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/485308804/port.o: ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  .generated_files/b8fd982c1a33ca9155244ac9c31c7b1e9c04ddf6.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/485308804" 
	@${RM} ${OBJECTDIR}/_ext/485308804/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/485308804/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/485308804/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/485308804/port.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/croutine.o: ../third_party/FreeRTOS/croutine.c  .generated_files/bb9bb1f696f14bdaab8e426517bc721d3fdafcef.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/croutine.c  -o ${OBJECTDIR}/_ext/1051866110/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/croutine.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/event_groups.o: ../third_party/FreeRTOS/event_groups.c  .generated_files/1e09251634bca3a54f2f0fa35d53d4d45f0f6148.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/event_groups.c  -o ${OBJECTDIR}/_ext/1051866110/event_groups.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/event_groups.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/list.o: ../third_party/FreeRTOS/list.c  .generated_files/15c6585d861570a6e8294c08508ebcb316b6f185.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/list.c  -o ${OBJECTDIR}/_ext/1051866110/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/list.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/queue.o: ../third_party/FreeRTOS/queue.c  .generated_files/c78b73c4a0088a1a96c15a6ab6792a818d202a32.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/queue.c  -o ${OBJECTDIR}/_ext/1051866110/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/queue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/stream_buffer.o: ../third_party/FreeRTOS/stream_buffer.c  .generated_files/950be595c9705423f5d9c1f8f216af874307b0ac.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/stream_buffer.c  -o ${OBJECTDIR}/_ext/1051866110/stream_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/tasks.o: ../third_party/FreeRTOS/tasks.c  .generated_files/bf9ef07c0300049335a64bcf8164f3734165eb1a.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/tasks.c  -o ${OBJECTDIR}/_ext/1051866110/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/tasks.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/timers.o: ../third_party/FreeRTOS/timers.c  .generated_files/5f7afceaaf30e0b743a663f4c22a2ad2953524c.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/timers.c  -o ${OBJECTDIR}/_ext/1051866110/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/timers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/566887654/bldc.o: ../app/bldc/bldc.c  .generated_files/98bf3b4af6805ca1b123a865349d6502759e0985.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/566887654" 
	@${RM} ${OBJECTDIR}/_ext/566887654/bldc.o.d 
	@${RM} ${OBJECTDIR}/_ext/566887654/bldc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/bldc/bldc.c  -o ${OBJECTDIR}/_ext/566887654/bldc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/566887654/bldc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_timer.o: ../app/driver/drv_timer.c  .generated_files/65a2145c0a12824412e5cbe1e73df7beb09a696b.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_timer.c  -o ${OBJECTDIR}/_ext/618841211/drv_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_timer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_adc.o: ../app/driver/drv_adc.c  .generated_files/196350c99577e5a028f5a490d9060b9b0f483e8a.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_adc.c  -o ${OBJECTDIR}/_ext/618841211/drv_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_adc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1354880047/hook.o: ../app/freertos/hook.c  .generated_files/49c880b896808153ebbd2d190f553f56f684b320.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1354880047" 
	@${RM} ${OBJECTDIR}/_ext/1354880047/hook.o.d 
	@${RM} ${OBJECTDIR}/_ext/1354880047/hook.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/freertos/hook.c  -o ${OBJECTDIR}/_ext/1354880047/hook.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1354880047/hook.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/998514728/util_filter.o: ../app/utility/filter/util_filter.c  .generated_files/92b307375c0a1c8d7cdc99f7d5d49d43177a2ab6.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/998514728" 
	@${RM} ${OBJECTDIR}/_ext/998514728/util_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/998514728/util_filter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/utility/filter/util_filter.c  -o ${OBJECTDIR}/_ext/998514728/util_filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/998514728/util_filter.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/255416751/util_trace.o: ../app/utility/util_trace.c  .generated_files/fe0f321498a28ef2f5a333d7d08a330ece90beed.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/255416751" 
	@${RM} ${OBJECTDIR}/_ext/255416751/util_trace.o.d 
	@${RM} ${OBJECTDIR}/_ext/255416751/util_trace.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/utility/util_trace.c  -o ${OBJECTDIR}/_ext/255416751/util_trace.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/255416751/util_trace.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360919890/main.o: ../app/main.c  .generated_files/d8c68885835aaf1ce4722fc160279a5258a2860b.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/main.c  -o ${OBJECTDIR}/_ext/1360919890/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1859827547/heap_1.o: ../third_party/FreeRTOS/portable/MemMang/heap_1.c  .generated_files/37cd3435fdb6e803313255a9df2673252a48a304.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1859827547" 
	@${RM} ${OBJECTDIR}/_ext/1859827547/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1859827547/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/_ext/1859827547/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1859827547/heap_1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/485308804/port.o: ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  .generated_files/103722aba2d7d955a77be20f62ea61d55f281090.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/485308804" 
	@${RM} ${OBJECTDIR}/_ext/485308804/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/485308804/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/485308804/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/485308804/port.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/croutine.o: ../third_party/FreeRTOS/croutine.c  .generated_files/5f8727b3a2c263872b7ed849cfdac7ee543708ff.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/croutine.c  -o ${OBJECTDIR}/_ext/1051866110/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/croutine.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/event_groups.o: ../third_party/FreeRTOS/event_groups.c  .generated_files/e8cfc30065c3f442566a1306300fc6bb7530bc79.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/event_groups.c  -o ${OBJECTDIR}/_ext/1051866110/event_groups.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/event_groups.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/list.o: ../third_party/FreeRTOS/list.c  .generated_files/ca635b676e65aad0997fdaf327431f46cab8cbd8.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/list.c  -o ${OBJECTDIR}/_ext/1051866110/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/list.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/queue.o: ../third_party/FreeRTOS/queue.c  .generated_files/652407e9494c12212c1d42c4dbf7ab7ab4fbb846.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/queue.c  -o ${OBJECTDIR}/_ext/1051866110/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/queue.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/stream_buffer.o: ../third_party/FreeRTOS/stream_buffer.c  .generated_files/79edbf7117abf16e2f360f212dce86a4bc19385a.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/stream_buffer.c  -o ${OBJECTDIR}/_ext/1051866110/stream_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/tasks.o: ../third_party/FreeRTOS/tasks.c  .generated_files/680af45f9abf581c8427d9f4a552791864073ccb.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/tasks.c  -o ${OBJECTDIR}/_ext/1051866110/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/tasks.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/timers.o: ../third_party/FreeRTOS/timers.c  .generated_files/95d7298581046c0a856b497b4d0d87c0c88e55dc.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/timers.c  -o ${OBJECTDIR}/_ext/1051866110/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/timers.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
dist/${CND_CONF}/${IMAGE_TYPE}/motor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  C:/Program\ Files/Microchip/xc16/v1.61/lib/libdsp-elf.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/motor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    "C:\Program Files\Microchip\xc16\v1.61\lib\libdsp-elf.a"  -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-lq$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/motor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  C:/Program\ Files/Microchip/xc16/v1.61/lib/libdsp-elf.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/motor.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    "C:\Program Files\Microchip\xc16\v1.61\lib\libdsp-elf.a"  -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-lq$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
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
