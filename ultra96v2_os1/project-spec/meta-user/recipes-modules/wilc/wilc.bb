#SUMMARY = "Recipe for  build an external wilc Linux kernel module"
#SECTION = "PETALINUX/modules"
#LICENSE = "GPLv2"
#LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"
#
#inherit module
#
#SRC_URI = "file://Makefile \
#           file://wilc.c \
#	   file://COPYING \
#          "
#
#S = "${WORKDIR}"
#
# The inherit of module.bbclass will automatically name module packages with
# "kernel-module-" prefix as required by the oe-core build environment.

SUMMARY = "Recipe for building an external wilc Linux kernel module"
SECTION = "PETALINUX/modules"
LICENSE = "GPLv3"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-3.0;md5=c79ff39f19dfec6d293b95dea7b07891"

inherit module

SRC_URI =  "git://github.com/avnet/u96v2-wilc-driver;protocol=http;branch=v15_2"

SRCREV = "01ab7484e0e6b2191c69d7ec7c6e89da5ca51f0f"

DEPENDS += "virtual/kernel"

S = "${WORKDIR}/git/wilc"

EXTRA_OEMAKE = 'CONFIG_WILC=y \
		WLAN_VENDOR_MCHP=y \
		CONFIG_WILC_SDIO=m \
		CONFIG_WILC_SPI=n \
		CONFIG_WILC1000_HW_OOB_INTR=n \
		KERNEL_SRC="${STAGING_KERNEL_DIR}" \
		O=${STAGING_KERNEL_BUILDDIR}'
