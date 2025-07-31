#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------

ifeq ($(strip $(DEVKITPRO)),)
$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>/devkitpro")
endif

TOPDIR ?= $(CURDIR)
include $(DEVKITPRO)/libnx/switch_rules

#---------------------------------------------------------------------------------
# TARGET is the name of the output
# BUILD is the directory where object files & intermediate files will be placed
# SOURCES is a list of directories containing source code
# DATA is a list of directories containing data files
# INCLUDES is a list of directories containing header files
# ROMFS is the directory containing data to be added to RomFS, relative to the Makefile (Optional)
#
# NO_ICON: if set to anything, do not use icon.
# NO_NACP: if set to anything, no .nacp file is generated.
# APP_TITLE is the name of the app stored in the .nacp file (Optional)
# APP_AUTHOR is the author of the app stored in the .nacp file (Optional)
# APP_VERSION is the version of the app stored in the .nacp file (Optional)
# APP_TITLEID is the titleID of the app stored in the .nacp file (Optional)
# ICON is the filename of the icon (.jpg), relative to the project folder.
#   If not set, it attempts to use one of the following (in this order):
#     - <Project name>.jpg
#     - icon.jpg
#     - <libnx folder>/default_icon.jpg
#
# CONFIG_JSON is the filename of the NPDM config file (.json), relative to the project folder.
#   If not set, it attempts to use one of the following (in this order):
#     - <Project name>.json
#     - config.json
#   If a JSON file is provided or autodetected, an ExeFS PFS0 (.nsp) is built instead
#   of a homebrew executable (.nro). This is intended to be used for sysmodules.
#   NACP building is skipped as well.
#---------------------------------------------------------------------------------
TARGET		:=	$(notdir $(CURDIR))
BUILD		:=	.build
SOURCES		:=	.
DATA		:=	data
INCLUDES	:=	include
#ROMFS	:=	romfs

#---------------------------------------------------------------------------------
# options for code generation
#---------------------------------------------------------------------------------
ARCH	:=	-march=armv8-a+crc+crypto -mtune=cortex-a57 -mtp=soft -fPIE

CFLAGS	:=	-g -Wall -O2 -ffunction-sections \
			$(ARCH) $(DEFINES) `curl-config --cflags`

CFLAGS	+=	$(INCLUDE) -D__SWITCH__

CXXFLAGS	:= $(CFLAGS) -fno-rtti -fno-exceptions

ASFLAGS	:=	-g $(ARCH)
LDFLAGS	=	-specs=$(DEVKITPRO)/libnx/switch.specs -g $(ARCH) -Wl,-Map,$(notdir $*.map)

LIBS := -lnx `curl-config --libs` -ljson-c

# Swift specific flags
# SWIFTC := swiftc
SWIFT_TOOLCHAIN := /Users/llsc12/Library/Developer/Toolchains/swift-6.2-DEVELOPMENT-SNAPSHOT-2025-07-09-a.xctoolchain
SWIFTC := $(SWIFT_TOOLCHAIN)/usr/bin/swiftc
UNICODE_SUPPORT = $(SWIFT_TOOLCHAIN)/usr/lib/swift/embedded/aarch64-none-none-elf/libswiftUnicodeDataTables.a

# Recursive Swift file discovery
SWIFT_SRCS := $(shell find .. -name "*.swift" -type f)
INCLUDE_DIR := ./../../Support
MODULEMAP := $(INCLUDE_DIR)/module.modulemap
SHIM_HEADER := $(INCLUDE_DIR)/header.h

SWIFT_CFLAGS := \
  -I/opt/devkitpro/libnx/include \
  -I/opt/devkitpro/libnx/include/switch \
  -I/opt/devkitpro/devkitA64/aarch64-none-elf/include

SWIFT_VERSION := 6
BUILD_DIR := swift
OBJ_DIR := $(BUILD_DIR)/obj
LL_DIR := $(BUILD_DIR)/ll

# end of swift specific flags

#---------------------------------------------------------------------------------
# list of directories containing libraries, this must be the top level containing
# include and lib
#---------------------------------------------------------------------------------
LIBDIRS	:= $(PORTLIBS) $(LIBNX)

#---------------------------------------------------------------------------------
# Recursive file discovery functions
#---------------------------------------------------------------------------------
rwildcard=$(foreach d,$(wildcard $(1:=/*)),$(call rwildcard,$d,$2) $(filter $(subst *,%,$2),$d))

# Function to get all subdirectories recursively
get_all_dirs = $(sort $(dir $(call rwildcard,$(1),*)))

#---------------------------------------------------------------------------------
# no real need to edit anything past this point unless you need to add additional
# rules for different file extensions
#---------------------------------------------------------------------------------
ifneq ($(BUILD),$(notdir $(CURDIR)))
#---------------------------------------------------------------------------------

export OUTPUT	:=	$(CURDIR)/$(TARGET)
export TOPDIR	:=	$(CURDIR)

# Get all directories recursively for VPATH
ALL_SOURCE_DIRS := $(foreach dir,$(SOURCES),$(call get_all_dirs,$(CURDIR)/$(dir)))
ALL_DATA_DIRS := $(foreach dir,$(DATA),$(call get_all_dirs,$(CURDIR)/$(dir)))

export VPATH	:=	$(ALL_SOURCE_DIRS) $(ALL_DATA_DIRS)

export DEPSDIR	:=	$(CURDIR)/$(BUILD)

# Recursive file discovery
CFILES		:=	$(foreach dir,$(SOURCES),$(notdir $(call rwildcard,$(dir),*.c)))
CPPFILES	:=	$(foreach dir,$(SOURCES),$(notdir $(call rwildcard,$(dir),*.cpp)))
SFILES		:=	$(foreach dir,$(SOURCES),$(notdir $(call rwildcard,$(dir),*.s)))
BINFILES	:=	$(foreach dir,$(DATA),$(notdir $(call rwildcard,$(dir),*.*)))

#---------------------------------------------------------------------------------
# use CXX for linking C++ projects, CC for standard C
#---------------------------------------------------------------------------------
ifeq ($(strip $(CPPFILES)),)
#---------------------------------------------------------------------------------
	export LD	:=	$(CC)
#---------------------------------------------------------------------------------
else
#---------------------------------------------------------------------------------
	export LD	:=	$(CXX)
#---------------------------------------------------------------------------------
endif
#---------------------------------------------------------------------------------

export OFILES_BIN	:=	$(addsuffix .o,$(BINFILES))
export OFILES_SRC	:=	$(CPPFILES:.cpp=.o) $(CFILES:.c=.o) $(SFILES:.s=.o) $(OBJ_DIR)/app.o $(OBJ_DIR)/posix_memalign_shim.o
export OFILES 	  :=	$(OFILES_BIN) $(OFILES_SRC)
export HFILES_BIN	:=	$(addsuffix .h,$(subst .,_,$(BINFILES)))

# Recursive include directory discovery
ALL_INCLUDE_DIRS := $(foreach dir,$(INCLUDES),$(call get_all_dirs,$(CURDIR)/$(dir)))
export INCLUDE	:=	$(foreach dir,$(ALL_INCLUDE_DIRS),-I$(dir)) \
			$(foreach dir,$(LIBDIRS),-I$(dir)/include) \
			-I$(CURDIR)/$(BUILD)

export LIBPATHS	:=	$(foreach dir,$(LIBDIRS),-L$(dir)/lib)

ifeq ($(strip $(CONFIG_JSON)),)
	jsons := $(wildcard *.json)
	ifneq (,$(findstring $(TARGET).json,$(jsons)))
		export APP_JSON := $(TOPDIR)/$(TARGET).json
	else
		ifneq (,$(findstring config.json,$(jsons)))
			export APP_JSON := $(TOPDIR)/config.json
		endif
	endif
else
	export APP_JSON := $(TOPDIR)/$(CONFIG_JSON)
endif

ifeq ($(strip $(ICON)),)
	icons := $(wildcard *.jpg)
	ifneq (,$(findstring $(TARGET).jpg,$(icons)))
		export APP_ICON := $(TOPDIR)/$(TARGET).jpg
	else
		ifneq (,$(findstring icon.jpg,$(icons)))
			export APP_ICON := $(TOPDIR)/icon.jpg
		endif
	endif
else
	export APP_ICON := $(TOPDIR)/$(ICON)
endif

ifeq ($(strip $(NO_ICON)),)
	export NROFLAGS += --icon=$(APP_ICON)
endif

ifeq ($(strip $(NO_NACP)),)
	export NROFLAGS += --nacp=$(CURDIR)/$(TARGET).nacp
endif

ifneq ($(APP_TITLEID),)
	export NACPFLAGS += --titleid=$(APP_TITLEID)
endif

ifneq ($(ROMFS),)
	export NROFLAGS += --romfsdir=$(CURDIR)/$(ROMFS)
endif

.PHONY: $(BUILD) clean all

#---------------------------------------------------------------------------------
all: $(BUILD)

$(BUILD):
	@[ -d $@ ] || mkdir -p $@
	@$(MAKE) --no-print-directory -C $(BUILD) -f $(CURDIR)/Makefile

#---------------------------------------------------------------------------------
clean:
	@echo clean ...
ifeq ($(strip $(APP_JSON)),)
	@rm -fr $(BUILD) $(TARGET).nro $(TARGET).nacp $(TARGET).elf
else
	@rm -fr $(BUILD) $(TARGET).nsp $(TARGET).nso $(TARGET).npdm $(TARGET).elf
endif

#---------------------------------------------------------------------------------
else
.PHONY:	all

DEPENDS	:=	$(OFILES:.o=.d)

#---------------------------------------------------------------------------------
# main targets
#---------------------------------------------------------------------------------
ifeq ($(strip $(APP_JSON)),)

all	:	$(OUTPUT).nro

ifeq ($(strip $(NO_NACP)),)
$(OUTPUT).nro	:	$(OUTPUT).elf $(OUTPUT).nacp
else
$(OUTPUT).nro	:	$(OUTPUT).elf
endif

else

all	:	$(OUTPUT).nsp

$(OUTPUT).nsp	:	$(OUTPUT).nso $(OUTPUT).npdm

$(OUTPUT).nso	:	$(OUTPUT).elf

endif

$(OUTPUT).elf : $(OFILES)
	@$(LD) $(LDFLAGS) -o $@ $(OFILES) $(LIBPATHS) $(LIBS) -Wl,--whole-archive $(UNICODE_SUPPORT) -Wl,--no-whole-archive

$(OFILES_SRC)	: $(HFILES_BIN)

#---------------------------------------------------------------------------------
# you need a rule like this for each extension you use as binary data
#---------------------------------------------------------------------------------
%.bin.o	%_bin.h :	%.bin
#---------------------------------------------------------------------------------
	@echo $(notdir $<)
	@$(bin2o)

-include $(DEPENDS)

# swift compilation

$(OBJ_DIR)/app.o: $(LL_DIR)/app.ll
	@mkdir -p $(OBJ_DIR)
	@clang -target aarch64 -fpic -ffreestanding \
		-c $(LL_DIR)/app.ll -o $(OBJ_DIR)/app.o

$(LL_DIR)/app.ll: $(SWIFT_SRCS)
	@mkdir -p $(LL_DIR)
	@$(SWIFTC) -swift-version $(SWIFT_VERSION) \
		-target aarch64-none-none-elf \
		-enable-experimental-feature Embedded \
		-parse-as-library \
		-Xcc -fmodule-map-file=$(MODULEMAP) \
		$(foreach flag,$(SWIFT_CFLAGS),-Xcc $(flag)) \
		$(SWIFT_SRCS) \
		-wmo \
		-emit-ir \
		-o $(LL_DIR)/app.ll

#---------------------------------------------------------------------------------
# posix_memalign shim rule
$(OBJ_DIR)/posix_memalign_shim.o: ./../Support/posix_memalign_shim.c
	@mkdir -p $(OBJ_DIR)
	@$(CC) -c $< -o $@

#---------------------------------------------------------------------------------------
endif
#---------------------------------------------------------------------------------------
