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
${OBJECTDIR}/_ext/566887654/bldc.o: ../app/bldc/bldc.c  .generated_files/2dc07e436ff1fc4571c755ff627c031b8e47e84e.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/566887654" 
	@${RM} ${OBJECTDIR}/_ext/566887654/bldc.o.d 
	@${RM} ${OBJECTDIR}/_ext/566887654/bldc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/bldc/bldc.c  -o ${OBJECTDIR}/_ext/566887654/bldc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/566887654/bldc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_timer.o: ../app/driver/drv_timer.c  .generated_files/2752660718234cbf822ba2734d7104a67a8a1199.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_timer.c  -o ${OBJECTDIR}/_ext/618841211/drv_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_timer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_adc.o: ../app/driver/drv_adc.c  .generated_files/9b73b736944fc29814ff04381aa5d3a1f59d8a53.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_adc.c  -o ${OBJECTDIR}/_ext/618841211/drv_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_adc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_pwm.o: ../app/driver/drv_pwm.c  .generated_files/6bd94292b7c79a6b4ecf9dc0233a86c653f31c6b.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_pwm.c  -o ${OBJECTDIR}/_ext/618841211/drv_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_pwm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_uart.o: ../app/driver/drv_uart.c  .generated_files/fef425e5a207b44cdf680bef751d1b93ab2b9ae2.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_uart.c  -o ${OBJECTDIR}/_ext/618841211/drv_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_uart.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1354880047/hook.o: ../app/freertos/hook.c  .generated_files/b01a6da54e457f8dcd6f8546f30405c40290d659.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1354880047" 
	@${RM} ${OBJECTDIR}/_ext/1354880047/hook.o.d 
	@${RM} ${OBJECTDIR}/_ext/1354880047/hook.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/freertos/hook.c  -o ${OBJECTDIR}/_ext/1354880047/hook.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1354880047/hook.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/290104761/pc_interface.o: ../app/pcIntf/pc_interface.c  .generated_files/c6ce8f775e75658d5a0dfe7b026bf65900efb5e6.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/290104761" 
	@${RM} ${OBJECTDIR}/_ext/290104761/pc_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/290104761/pc_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/pcIntf/pc_interface.c  -o ${OBJECTDIR}/_ext/290104761/pc_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/290104761/pc_interface.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/998514728/util_filter.o: ../app/utility/filter/util_filter.c  .generated_files/505a287083c2a57b193cf9c9c1033c6b76ab30f8.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/998514728" 
	@${RM} ${OBJECTDIR}/_ext/998514728/util_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/998514728/util_filter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/utility/filter/util_filter.c  -o ${OBJECTDIR}/_ext/998514728/util_filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/998514728/util_filter.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/255416751/util_trace.o: ../app/utility/util_trace.c  .generated_files/9a5c3275906a8d10ac8238f770d6646c3840ac63.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/255416751" 
	@${RM} ${OBJECTDIR}/_ext/255416751/util_trace.o.d 
	@${RM} ${OBJECTDIR}/_ext/255416751/util_trace.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/utility/util_trace.c  -o ${OBJECTDIR}/_ext/255416751/util_trace.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/255416751/util_trace.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360919890/main.o: ../app/main.c  .generated_files/788be513eb1bc48287daa8828367480479dfba5c.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/main.c  -o ${OBJECTDIR}/_ext/1360919890/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1859827547/heap_1.o: ../third_party/FreeRTOS/portable/MemMang/heap_1.c  .generated_files/731fc6964e16eec29973b2edc92360a592228854.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1859827547" 
	@${RM} ${OBJECTDIR}/_ext/1859827547/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1859827547/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/_ext/1859827547/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1859827547/heap_1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/485308804/port.o: ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  .generated_files/777dc2b4e85ad5167e684f5ef8c67db658e8419d.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/485308804" 
	@${RM} ${OBJECTDIR}/_ext/485308804/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/485308804/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/485308804/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/485308804/port.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/croutine.o: ../third_party/FreeRTOS/croutine.c  .generated_files/e8a6a9b4b79af4d456f50061359aec9e99c28363.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/croutine.c  -o ${OBJECTDIR}/_ext/1051866110/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/croutine.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/event_groups.o: ../third_party/FreeRTOS/event_groups.c  .generated_files/acefc48b8cc3685f49e5540f195e166ca22a52aa.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/event_groups.c  -o ${OBJECTDIR}/_ext/1051866110/event_groups.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/event_groups.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/list.o: ../third_party/FreeRTOS/list.c  .generated_files/6bb757a681b227d1d466fda891684789aec43042.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/list.c  -o ${OBJECTDIR}/_ext/1051866110/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/list.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/queue.o: ../third_party/FreeRTOS/queue.c  .generated_files/83bfec79fb075b2bb646fc055146b9f557de0c4c.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/queue.c  -o ${OBJECTDIR}/_ext/1051866110/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/queue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/stream_buffer.o: ../third_party/FreeRTOS/stream_buffer.c  .generated_files/ffc3bd927968690c083692dc26eb19f43c0051a6.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/stream_buffer.c  -o ${OBJECTDIR}/_ext/1051866110/stream_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/tasks.o: ../third_party/FreeRTOS/tasks.c  .generated_files/a42bb29c689c4cc13e60bdf6852fbf8b07553c55.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/tasks.c  -o ${OBJECTDIR}/_ext/1051866110/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/tasks.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/timers.o: ../third_party/FreeRTOS/timers.c  .generated_files/284d9927b808bac172cb29fc15ceb3cfbd1fc307.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/timers.c  -o ${OBJECTDIR}/_ext/1051866110/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/timers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/566887654/bldc.o: ../app/bldc/bldc.c  .generated_files/65180f647c86f8740c055ec5fa3ad2c64a1c4da8.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/566887654" 
	@${RM} ${OBJECTDIR}/_ext/566887654/bldc.o.d 
	@${RM} ${OBJECTDIR}/_ext/566887654/bldc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/bldc/bldc.c  -o ${OBJECTDIR}/_ext/566887654/bldc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/566887654/bldc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_timer.o: ../app/driver/drv_timer.c  .generated_files/cf7f03afe0a9cc2d1cb363a883e5750a1cf9fdaa.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_timer.c  -o ${OBJECTDIR}/_ext/618841211/drv_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_timer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_adc.o: ../app/driver/drv_adc.c  .generated_files/5a8ab1ef77925d799c2b7e8e7426cf68906c658b.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_adc.c  -o ${OBJECTDIR}/_ext/618841211/drv_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_adc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_pwm.o: ../app/driver/drv_pwm.c  .generated_files/52e83a3220323268be77fa60040a685e17fae39.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_pwm.c  -o ${OBJECTDIR}/_ext/618841211/drv_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_pwm.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/618841211/drv_uart.o: ../app/driver/drv_uart.c  .generated_files/fd3e20586e990af3880095187a1d7e40aaadd3e0.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/618841211" 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/618841211/drv_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/driver/drv_uart.c  -o ${OBJECTDIR}/_ext/618841211/drv_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/618841211/drv_uart.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1354880047/hook.o: ../app/freertos/hook.c  .generated_files/b4e2da6453ebeac01104435089c171d1fc9e8541.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1354880047" 
	@${RM} ${OBJECTDIR}/_ext/1354880047/hook.o.d 
	@${RM} ${OBJECTDIR}/_ext/1354880047/hook.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/freertos/hook.c  -o ${OBJECTDIR}/_ext/1354880047/hook.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1354880047/hook.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/290104761/pc_interface.o: ../app/pcIntf/pc_interface.c  .generated_files/68559e79a7ec77bba22f5cf63228d4ee1ad9bcb2.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/290104761" 
	@${RM} ${OBJECTDIR}/_ext/290104761/pc_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/290104761/pc_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/pcIntf/pc_interface.c  -o ${OBJECTDIR}/_ext/290104761/pc_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/290104761/pc_interface.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/998514728/util_filter.o: ../app/utility/filter/util_filter.c  .generated_files/d912039c83304d7311435eb42b49d46639ecb269.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/998514728" 
	@${RM} ${OBJECTDIR}/_ext/998514728/util_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/998514728/util_filter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/utility/filter/util_filter.c  -o ${OBJECTDIR}/_ext/998514728/util_filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/998514728/util_filter.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/255416751/util_trace.o: ../app/utility/util_trace.c  .generated_files/2947093cb4fef053859c261dbb678272b6676e14.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/255416751" 
	@${RM} ${OBJECTDIR}/_ext/255416751/util_trace.o.d 
	@${RM} ${OBJECTDIR}/_ext/255416751/util_trace.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/utility/util_trace.c  -o ${OBJECTDIR}/_ext/255416751/util_trace.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/255416751/util_trace.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360919890/main.o: ../app/main.c  .generated_files/6fdc2c2e40b75368a7d8fe79c67e986114e37258.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360919890" 
	@${RM} ${OBJECTDIR}/_ext/1360919890/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360919890/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../app/main.c  -o ${OBJECTDIR}/_ext/1360919890/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360919890/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1859827547/heap_1.o: ../third_party/FreeRTOS/portable/MemMang/heap_1.c  .generated_files/4bdc40468b043e9b17841b71b727af88ddf848d1.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1859827547" 
	@${RM} ${OBJECTDIR}/_ext/1859827547/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1859827547/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/_ext/1859827547/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1859827547/heap_1.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/485308804/port.o: ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  .generated_files/9f82951aaeab53644c38b9c3afe2316c0328740a.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/485308804" 
	@${RM} ${OBJECTDIR}/_ext/485308804/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/485308804/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/485308804/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/485308804/port.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/croutine.o: ../third_party/FreeRTOS/croutine.c  .generated_files/a95075901d6b81d12850e57e9c04fd9ba8dd4946.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/croutine.c  -o ${OBJECTDIR}/_ext/1051866110/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/croutine.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/event_groups.o: ../third_party/FreeRTOS/event_groups.c  .generated_files/fe538acf9a06200148ce2c510add1de5cd27a1d8.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/event_groups.c  -o ${OBJECTDIR}/_ext/1051866110/event_groups.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/event_groups.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/list.o: ../third_party/FreeRTOS/list.c  .generated_files/8c74d361f0e996e1bcb7aa27a969dc4cadebcf34.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/list.c  -o ${OBJECTDIR}/_ext/1051866110/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/list.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/queue.o: ../third_party/FreeRTOS/queue.c  .generated_files/baf97dd7a363a6fbc5b035ecca21ddfc49656759.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/queue.c  -o ${OBJECTDIR}/_ext/1051866110/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/queue.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/stream_buffer.o: ../third_party/FreeRTOS/stream_buffer.c  .generated_files/80eb2b82a8432493817b0ed58001d0460cad7f3b.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/stream_buffer.c  -o ${OBJECTDIR}/_ext/1051866110/stream_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/stream_buffer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/tasks.o: ../third_party/FreeRTOS/tasks.c  .generated_files/1d7d1f4c77a27f7dba9151f8f9ab1ecbfd744816.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1051866110" 
	@${RM} ${OBJECTDIR}/_ext/1051866110/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1051866110/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../third_party/FreeRTOS/tasks.c  -o ${OBJECTDIR}/_ext/1051866110/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1051866110/tasks.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../app/bldc" -I"../app/driver" -I"../app/pcIntf" -I"../app/utility" -I"../app/utility/filter" -I"../config" -I"../third_party/FreeRTOS/include" -I"../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC" -DMPLAB_DSPIC_PORT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1051866110/timers.o: ../third_party/FreeRTOS/timers.c  .generated_files/f68ec56cd0f4fce23d94b4a22e26ff020c8a56a9.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
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
${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o: ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  .generated_files/a83a6d63ae1cc09b4e67b6633bc5392f47e3e3d1.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
	@${MKDIR} "${OBJECTDIR}/_ext/485308804" 
	@${RM} ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o.d 
	@${RM} ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  -o ${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/485308804/portasm_dsPIC.o: ../third_party/FreeRTOS/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  .generated_files/c348fcc550439865e56ab03504a1945b06adfa4f.flag .generated_files/35713b39c1b4ae317f752aef53a0b681fac576c7.flag
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
