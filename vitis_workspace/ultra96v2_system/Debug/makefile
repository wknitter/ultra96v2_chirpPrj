#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf

#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = /home/parallels/ultra96v2_0/vitis_workspace/ultra96v2_0/export/ultra96v2_0/ultra96v2_0.xpfm
SYS_CONFIG = ultra96v2_0
DOMAINS = standalone_domain
BIF_PATH = /home/parallels/ultra96v2_0/vitis_workspace/ultra96v2_system/Debug/system.bif

BITSTREAM_PATH = /home/parallels/ultra96v2_0/vitis_workspace/hello_ultra96v2/_ide/bitstream/ultra96v2_0_wrapper.bit
SD_FILES = --elf /home/parallels/ultra96v2_0/vitis_workspace/hello_ultra96v2/Debug/hello_ultra96v2.elf,psu_cortexa53_0

GENERATE_BIF_XSCT_CMD = ${GENERATE_BIF} -xpfm ${XPFM_PATH} -domains ${DOMAINS} -bifpath ${BIF_PATH}

#
# primary build targets
#

all: sd_card

sd_card:
	-@echo Generating bif file for the system project
	-@echo Executing command \'${GENERATE_BIF_XSCT_CMD}\' on XSCT
	-@echo "connect -u TCP:localhost:40063; tcf send_command $$::xsdb::curchan xsdb eval s es [list \"${GENERATE_BIF_XSCT_CMD}\"]" | xsct
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} sd_card
	${RM} system.bif

.PHONY: all sd_card clean


