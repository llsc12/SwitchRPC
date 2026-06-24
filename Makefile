COMPONENTS := SwitchRPC SwitchRPCConfig
TOPTARGETS := all clean

TITLEID     ?= 3120000000000092
SWITCH_IP   ?= 192.168.0.33
SWITCH_PORT ?= 5000
SWITCH_FTP  := ftp://$(SWITCH_IP):$(SWITCH_PORT)

.PHONY: $(TOPTARGETS) $(COMPONENTS) install

TOPDIR ?= $(CURDIR)

IN_SYSMODULE_DIR	:=	Sources/SwitchRPC
IN_CONFIGAPP_DIR	:=	Sources/SwitchRPCConfig
IN_CONFIGAPP_FILE	:=	Sources/SwitchRPCConfig/SwitchRPCConfig.nro

OUT_DIR 			:= 	SwitchRPC
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

install:
	@test -f SwitchRPC.zip || (echo "SwitchRPC.zip not found — run 'make' first" && exit 1)
	@echo Installing to Switch @ $(SWITCH_IP):$(SWITCH_PORT)...
	@rm -rf /tmp/switchrpc-install
	@unzip -q SwitchRPC.zip -d /tmp/switchrpc-install
	@curl -s --ftp-create-dirs -T /tmp/switchrpc-install/SwitchRPC/atmosphere/contents/$(TITLEID)/exefs.nsp \
		$(SWITCH_FTP)/atmosphere/contents/$(TITLEID)/
	@curl -s --ftp-create-dirs -T /tmp/switchrpc-install/SwitchRPC/atmosphere/contents/$(TITLEID)/toolbox.json \
		$(SWITCH_FTP)/atmosphere/contents/$(TITLEID)/
	@curl -s --ftp-create-dirs -T /tmp/switchrpc-install/SwitchRPC/atmosphere/contents/$(TITLEID)/flags/boot2.flag \
		$(SWITCH_FTP)/atmosphere/contents/$(TITLEID)/flags/
	@curl -s --ftp-create-dirs -T /tmp/switchrpc-install/SwitchRPC/switch/SwitchRPCConfig.nro \
		$(SWITCH_FTP)/switch/
	@rm -rf /tmp/switchrpc-install
	@echo "[DONE] Restart your Switch to apply changes."

clean:
	@$(MAKE) -C Sources/SwitchRPC clean
	@$(MAKE) -C Sources/SwitchRPCConfig clean
	@rm -rf $(OUT_DIR)
	@rm -rf .build
	@rm -rf SwitchRPC.zip SwitchRPC.lst SwitchRPCConfig.lst
