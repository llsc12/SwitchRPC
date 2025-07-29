COMPONENTS := SwitchRPC SwitchRPCConfig
TOPTARGETS := all clean

TITLEID ?= 3120000000000092

.PHONY: $(TOPTARGETS) $(COMPONENTS)

TOPDIR ?= $(CURDIR)

IN_SYSMODULE_DIR	:=	Sources/SwitchRPC
IN_CONFIGAPP_DIR	:=	Sources/SwitchRPCConfig
IN_CONFIGAPP_FILE	:=	Sources/SwitchRPCConfig/SwitchRPCConfig.nro

OUT_DIR 		:= 	SwitchRPC
OUT_SYSMODULE_DIR	:=	build/SwitchRPC
OUT_CONFIGAPP_DIR	:=  build/SwitchRPCApp

all: $(COMPONENTS)
	@rm -rf $(OUT_DIR)
	#	Sysmodule files
	@mkdir -p $(OUT_DIR)/$(OUT_SERVER_DIR)/atmosphere/contents/$(TITLEID)/flags
	@touch $(OUT_DIR)/$(OUT_SERVER_DIR)/atmosphere/contents/$(TITLEID)/flags/boot2.flag
	@cp $(IN_SYSMODULE_DIR)/SwitchRPC.nsp 		$(OUT_DIR)/$(OUT_SERVER_DIR)/atmosphere/contents/$(TITLEID)/exefs.nsp
	@cp $(IN_SYSMODULE_DIR)/toolbox.json 		$(OUT_DIR)/$(OUT_SERVER_DIR)/atmosphere/contents/$(TITLEID)/toolbox.json
	#	App files
	@mkdir -p $(OUT_DIR)/switch
	@cp $(IN_CONFIGAPP_FILE) 		$(OUT_DIR)/switch/SwitchRPCConfig.nro
	#	Zipping up files
	@echo Zipping files now...
	@zip -r ./SwitchRPC.zip $(OUT_DIR)/switch ${OUT_DIR}/atmosphere
	@rm -rf $(TOPDIR)/$(OUT_DIR)
	# clean up
	@rm -rf $(IN_SYSMODULE_DIR)/SwitchRPC.nsp \
			$(IN_SYSMODULE_DIR)/SwitchRPC.elf \
			$(IN_SYSMODULE_DIR)/SwitchRPC.npdm \
			$(IN_SYSMODULE_DIR)/SwitchRPC.nso \
			$(IN_CONFIGAPP_DIR)/SwitchRPCConfig.nro \
			$(IN_CONFIGAPP_DIR)/SwitchRPCConfig.nacp \
			$(IN_CONFIGAPP_DIR)/SwitchRPCConfig.elf
	
	# done
	@echo [ZIPPED] All the files have been zipped and placed in $(OUT_DIR)/.
	@echo [DONE]


SwitchRPC:
	$(MAKE) -C Sources/SwitchRPC

SwitchRPCConfig:
	$(MAKE) -C Sources/SwitchRPCConfig

clean:
	$(MAKE) -C Sources/SwitchRPC clean
	$(MAKE) -C Sources/SwitchRPCConfig clean
	rm -rf $(OUT_DIR)
	rm -rf .build
