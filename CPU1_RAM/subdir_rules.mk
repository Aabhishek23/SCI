################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"D:/ti/ccs1240/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu0 -Ooff --include_path="D:/Users/VICTUS/workspace_v12/SCI" --include_path="D:/Users/VICTUS/workspace_v12/SCI/device" --include_path="D:/ti/c2000/C2000Ware_5_02_00_00/driverlib/f2837xd/driverlib" --include_path="D:/ti/ccs1240/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/include" --define=DEBUG --define=CPU1 --define=_LAUNCHXL_F28379D --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="D:/Users/VICTUS/workspace_v12/SCI/CPU1_RAM/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-133189169: ../lab_sci_launchpad.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"D:/ti/ccs1240/ccs/utils/sysconfig_1.17.0/sysconfig_cli.bat" -s "D:/ti/c2000/C2000Ware_5_02_00_00/.metadata/sdk.json" -b "/boards/LAUNCHXL_F28379D" --script "D:/Users/VICTUS/workspace_v12/SCI/lab_sci_launchpad.syscfg" -o "syscfg" --compiler ccs
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/board.c: build-133189169 ../lab_sci_launchpad.syscfg
syscfg/board.h: build-133189169
syscfg/board.cmd.genlibs: build-133189169
syscfg/board.opt: build-133189169
syscfg/board.json: build-133189169
syscfg/pinmux.csv: build-133189169
syscfg/c2000ware_libraries.cmd.genlibs: build-133189169
syscfg/c2000ware_libraries.opt: build-133189169
syscfg/c2000ware_libraries.c: build-133189169
syscfg/c2000ware_libraries.h: build-133189169
syscfg/clocktree.h: build-133189169
syscfg/: build-133189169

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"D:/ti/ccs1240/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu0 -Ooff --include_path="D:/Users/VICTUS/workspace_v12/SCI" --include_path="D:/Users/VICTUS/workspace_v12/SCI/device" --include_path="D:/ti/c2000/C2000Ware_5_02_00_00/driverlib/f2837xd/driverlib" --include_path="D:/ti/ccs1240/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/include" --define=DEBUG --define=CPU1 --define=_LAUNCHXL_F28379D --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="D:/Users/VICTUS/workspace_v12/SCI/CPU1_RAM/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


