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
SOURCEFILES_QUOTED_IF_SPACED=../app/bldc/bldc.c ../app/freertos/hook.c ../app/main.c ../third_party/FreeRTOS/portable/MemMang/heap_1.c ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S ../third_party/FreeRTOS/croutine.c ../third_party/FreeRTOS/event_groups.c ../third_party/FreeRTOS/list.c ../third_party/FreeRTOS/queue.c ../third_party/FreeRTOS/stream_buffer.c ../third_party/FreeRTOS/tasks.c ../third_party/FreeRTOS/timers.c ../app/utility/util_trace.c ../app/driver/drv_timer.c ../app/driver/drv_adc.c ../app/utility/filter/util_filter.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/566887654/bldc.o ${OBJECTDIR}/_ext/1354880047/hook.o ${OBJECTDIR}/_ext/1360919890/main.o ${OBJECTDIR}/_ext/1859827547/heap_1.o ${OBJECTDIR}/_ext/485308804/port.o ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o ${OBJECTDIR}/_ext/1051866110/croutine.o ${OBJECTDIR}/_ext/1051866110/event_groups.o ${OBJECTDIR}/_ext/1051866110/list.o ${OBJECTDIR}/_ext/1051866110/queue.o ${OBJECTDIR}/_ext/1051866110/stream_buffer.o ${OBJECTDIR}/_ext/1051866110/tasks.o ${OBJECTDIR}/_ext/1051866110/timers.o ${OBJECTDIR}/_ext/255416751/util_trace.o ${OBJECTDIR}/_ext/618841211/drv_timer.o ${OBJECTDIR}/_ext/618841211/drv_adc.o ${OBJECTDIR}/_ext/998514728/util_filter.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/566887654/bldc.o.d ${OBJECTDIR}/_ext/1354880047/hook.o.d ${OBJECTDIR}/_ext/1360919890/main.o.d ${OBJECTDIR}/_ext/1859827547/heap_1.o.d ${OBJECTDIR}/_ext/485308804/port.o.d ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o.d ${OBJECTDIR}/_ext/1051866110/croutine.o.d ${OBJECTDIR}/_ext/1051866110/event_groups.o.d ${OBJECTDIR}/_ext/1051866110/list.o.d ${OBJECTDIR}/_ext/1051866110/queue.o.d ${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d ${OBJECTDIR}/_ext/1051866110/tasks.o.d ${OBJECTDIR}/_ext/1051866110/timers.o.d ${OBJECTDIR}/_ext/255416751/util_trace.o.d ${OBJECTDIR}/_ext/618841211/drv_timer.o.d ${OBJECTDIR}/_ext/618841211/drv_adc.o.d ${OBJECTDIR}/_ext/998514728/util_filter.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/566887654/bldc.o ${OBJECTDIR}/_ext/1354880047/hook.o ${OBJECTDIR}/_ext/1360919890/main.o ${OBJECTDIR}/_ext/1859827547/heap_1.o ${OBJECTDIR}/_ext/485308804/port.o ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o ${OBJECTDIR}/_ext/1051866110/croutine.o ${OBJECTDIR}/_ext/1051866110/event_groups.o ${OBJECTDIR}/_ext/1051866110/list.o ${OBJECTDIR}/_ext/1051866110/queue.o ${OBJECTDIR}/_ext/1051866110/stream_buffer.o ${OBJECTDIR}/_ext/1051866110/tasks.o ${OBJECTDIR}/_ext/1051866110/timers.o ${OBJECTDIR}/_ext/255416751/util_trace.o ${OBJECTDIR}/_ext/618841211/drv_timer.o ${OBJECTDIR}/_ext/618841211/drv_adc.o ${OBJECTDIR}/_ext/998514728/util_filter.o

# Source Files
SOURCEFILES=../app/bldc/bldc.c ../app/freertos/hook.c ../app/main.c ../third_party/FreeRTOS/portable/MemMang/heap_1.c ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S ../third_party/FreeRTOS/croutine.c ../third_party/FreeRTOS/event_groups.c ../third_party/FreeRTOS/list.c ../third_party/FreeRTOS/queue.c ../third_party/FreeRTOS/stream_buffer.c ../third_party/FreeRTOS/tasks.c ../third_party/FreeRTOS/timers.c ../app/utility/util_trace.c ../app/driver/drv_timer.c ../app/driver/drv_adc.c ../app/utility/filter/util_filter.c



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
${OBJECTDIR}/_ext/566887654/bldc.o: ../app/bldc/bldc.c  .generated_files/73c56fe74c4efc65f3559b7e5ace91739287d08f.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/566887654" 
	@${RM} ${OBJECTDIR}/_ext/566887654/bldc.o.d 
	@${RM} ${OBJECTDIR}/_ext/566887654/bldc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/bldc/bldc.c  -o ${OBJECTDIR}/_ext/566887654/bldc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/566887654/bldc.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1354880047/hook.o: ../app/freertos/hook.c  .generated_files/75fca94569c1cd220b53b060910f0927edb324fa.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1354880047" 
	@${RM} ${OBJECTDIR}/_ext/1354880047/hook.o.d 
	@${RM} ${OBJECTDIR}/_ext/1354880047/hook.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/freertos/hook.c  -o ${OBJECTDIR}/_ext/1354880047/hook.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1354880047/hook.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360919890/main.o: ../app/main.c  .generated_files/d32f76f2fda971d52d44031da099659598475c1a.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/main.c  -o ${OBJECTDIR}/_ext/1360919890/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/main.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1859827547/heap_1.o: ../third_party/FreeRTOS/portable/MemMang/heap_1.c  .generated_files/671f954192c1bf9bede263e42930fe688a4024ef.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1859827547" 
	@${RM} ${OBJECTDIR}/_ext/1859827547/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1859827547/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/_ext/1859827547/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1859827547/heap_1.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/485308804/port.o: ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  .generated_files/cd956faa574cb224b7a39c03bff5b5ac6e2c8180.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/485308804" 
	@${RM} ${OBJECTDIR}/_ext/485308804/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/485308804/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/485308804/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/485308804/port.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/croutine.o: ../third_party/FreeRTOS/croutine.c  .generated_files/4f35e848cdd69b9984966f6621c2abdf2c6575e4.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/croutine.c  -o ${OBJECTDIR}/_ext/1051866110/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/croutine.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/event_groups.o: ../third_party/FreeRTOS/event_groups.c  .generated_files/dd54c05e4cbb0c39390956787d1893ff9255051f.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/event_groups.c  -o ${OBJECTDIR}/_ext/1051866110/event_groups.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/event_groups.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/list.o: ../third_party/FreeRTOS/list.c  .generated_files/ed10c0b6e5128e5cd773c7db598727e99b01f44b.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/list.c  -o ${OBJECTDIR}/_ext/1051866110/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/list.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/queue.o: ../third_party/FreeRTOS/queue.c  .generated_files/341204fca216b553bca92ea1e46c21bd468acdd8.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/queue.c  -o ${OBJECTDIR}/_ext/1051866110/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/queue.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/stream_buffer.o: ../third_party/FreeRTOS/stream_buffer.c  .generated_files/55368a2d6f3e4387b4582e6486165f2b6f1611fb.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/stream_buffer.c  -o ${OBJECTDIR}/_ext/1051866110/stream_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/tasks.o: ../third_party/FreeRTOS/tasks.c  .generated_files/c9e0b4a5a4c38cca6af73dc38b0bfd15ecf1a936.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/tasks.c  -o ${OBJECTDIR}/_ext/1051866110/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/tasks.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/timers.o: ../third_party/FreeRTOS/timers.c  .generated_files/ba735b19dd4593b89d3aa8214970897df58384ea.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/timers.c  -o ${OBJECTDIR}/_ext/1051866110/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/timers.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/255416751/util_trace.o: ../app/utility/util_trace.c  .generated_files/e2546c40f97eff95008b648da74364ed8efc48cf.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/255416751" 
	@${RM} ${OBJECTDIR}/_ext/255416751/util_trace.o.d 
	@${RM} ${OBJECTDIR}/_ext/255416751/util_trace.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/utility/util_trace.c  -o ${OBJECTDIR}/_ext/255416751/util_trace.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/255416751/util_trace.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_timer.o: ../app/driver/drv_timer.c  .generated_files/e6b2e223fe7d92fc64cf46491587a2d3b8182512.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_timer.c  -o ${OBJECTDIR}/_ext/618841211/drv_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_timer.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_adc.o: ../app/driver/drv_adc.c  .generated_files/ed4d891ada0072abdd835a9df8e87f5cb9db07c1.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_adc.c  -o ${OBJECTDIR}/_ext/618841211/drv_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_adc.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/998514728/util_filter.o: ../app/utility/filter/util_filter.c  .generated_files/4056d16489039613edff0ade5b4f1b55e6ad4133.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/998514728" 
	@${RM} ${OBJECTDIR}/_ext/998514728/util_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/998514728/util_filter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/utility/filter/util_filter.c  -o ${OBJECTDIR}/_ext/998514728/util_filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/998514728/util_filter.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/566887654/bldc.o: ../app/bldc/bldc.c  .generated_files/20b0dbc1b2f64be75d8160bfb83789f3e41db9de.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/566887654" 
	@${RM} ${OBJECTDIR}/_ext/566887654/bldc.o.d 
	@${RM} ${OBJECTDIR}/_ext/566887654/bldc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/bldc/bldc.c  -o ${OBJECTDIR}/_ext/566887654/bldc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/566887654/bldc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1354880047/hook.o: ../app/freertos/hook.c  .generated_files/d7e8b169710aa1e6212e38d2e05285be09261127.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1354880047" 
	@${RM} ${OBJECTDIR}/_ext/1354880047/hook.o.d 
	@${RM} ${OBJECTDIR}/_ext/1354880047/hook.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/freertos/hook.c  -o ${OBJECTDIR}/_ext/1354880047/hook.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1354880047/hook.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360919890/main.o: ../app/main.c  .generated_files/28f9aa71c95a5788d4134d2be802eee98b7e5b35.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/main.c  -o ${OBJECTDIR}/_ext/1360919890/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1859827547/heap_1.o: ../third_party/FreeRTOS/portable/MemMang/heap_1.c  .generated_files/e2643bdf3f95f0cd7276d984a1442f5acbe37d1c.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1859827547" 
	@${RM} ${OBJECTDIR}/_ext/1859827547/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1859827547/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/_ext/1859827547/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1859827547/heap_1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/485308804/port.o: ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  .generated_files/5ef5a1e4bd2a1198298d8c6b7bb52a7c9ca55fb8.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/485308804" 
	@${RM} ${OBJECTDIR}/_ext/485308804/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/485308804/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/485308804/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/485308804/port.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/croutine.o: ../third_party/FreeRTOS/croutine.c  .generated_files/f7b18f6e70f2d97ce8e2ee23344d05b0b8bb2fb9.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/croutine.c  -o ${OBJECTDIR}/_ext/1051866110/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/croutine.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/event_groups.o: ../third_party/FreeRTOS/event_groups.c  .generated_files/d92e0cae2170955278b922bc36e2700bc806697a.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/event_groups.c  -o ${OBJECTDIR}/_ext/1051866110/event_groups.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/event_groups.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/list.o: ../third_party/FreeRTOS/list.c  .generated_files/d5f3d9054266b2d7984830a85f3ea2c7b79bed5.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/list.c  -o ${OBJECTDIR}/_ext/1051866110/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/list.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/queue.o: ../third_party/FreeRTOS/queue.c  .generated_files/c7e0ea911276474a0c4b04d9bdee7eae3aadb65f.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/queue.c  -o ${OBJECTDIR}/_ext/1051866110/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/queue.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/stream_buffer.o: ../third_party/FreeRTOS/stream_buffer.c  .generated_files/38da90361b73f4276710da37260e4040eaf1d05e.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/stream_buffer.c  -o ${OBJECTDIR}/_ext/1051866110/stream_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/tasks.o: ../third_party/FreeRTOS/tasks.c  .generated_files/5d44154bce2f63f4eebff56b2f926d8ea8de08a1.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/tasks.c  -o ${OBJECTDIR}/_ext/1051866110/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/tasks.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/timers.o: ../third_party/FreeRTOS/timers.c  .generated_files/9a8f722a08e537d3cbec04a04107559317aa08e2.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/timers.c  -o ${OBJECTDIR}/_ext/1051866110/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/timers.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/255416751/util_trace.o: ../app/utility/util_trace.c  .generated_files/b496ed9e91d3ed81e27cacef0023d5eb44e1238.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/255416751" 
	@${RM} ${OBJECTDIR}/_ext/255416751/util_trace.o.d 
	@${RM} ${OBJECTDIR}/_ext/255416751/util_trace.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/utility/util_trace.c  -o ${OBJECTDIR}/_ext/255416751/util_trace.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/255416751/util_trace.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_timer.o: ../app/driver/drv_timer.c  .generated_files/1e05bb1d093e3425b15953e88364cd0f24be747.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_timer.c  -o ${OBJECTDIR}/_ext/618841211/drv_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_timer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_adc.o: ../app/driver/drv_adc.c  .generated_files/d238937e1eb1fb69520fe3d689f701f485f970fa.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_adc.c  -o ${OBJECTDIR}/_ext/618841211/drv_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_adc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/998514728/util_filter.o: ../app/utility/filter/util_filter.c  .generated_files/92f45b8e08dba265b6a9b93217cf4725683ec085.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/998514728" 
	@${RM} ${OBJECTDIR}/_ext/998514728/util_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/998514728/util_filter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/utility/filter/util_filter.c  -o ${OBJECTDIR}/_ext/998514728/util_filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/998514728/util_filter.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o: ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  .generated_files/f2ef8dc33b1ee2a19401b62672afbaa539af1191.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/485308804" 
	@${RM} ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o.d 
	@${RM} ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  -o ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o.d"  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
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
dist/${CND_CONF}/${IMAGE_TYPE}/motor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/motor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/motor.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/motor.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
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
