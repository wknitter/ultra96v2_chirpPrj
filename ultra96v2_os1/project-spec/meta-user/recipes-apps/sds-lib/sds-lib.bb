#
# This file is the sds-lib recipe.
#

SUMMARY = "Simple sds-lib application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

#SRC_URI = "file://sds-lib.c \
#	   file://Makefile \
#		  "
#
#S = "${WORKDIR}"
#
#do_compile() {
#	     oe_runmake
#}
#
#do_install() {
#	     install -d ${D}${bindir}
#	     install -m 0755 sds-lib ${D}${bindir}
#}

SRC_URI = "file://libsds_lib.so \
	   file://libsds_lib_dbg.so \
	"

S = "${WORKDIR}"

do_install() {
	     install -d ${D}/${libdir}
	     install -m 0755 ${S}/libsds_lib.so ${D}/${libdir}
	     install -m 0755 ${S}/libsds_lib_dbg.so ${D}/${libdir}
}

FILES_${PN} += "${libdir}"
FILES_SOLIBSDEV = ""
