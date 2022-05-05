SUMMARY = "peppy's Kernel Adjustments for linux-imx 5.15"
DESCRIPTION = "Adjusts kernel configuration for linux-imx 5.15"
LICENSE = "MIT"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI:append = " file://can-fragment.cfg"

do_configure:append() {
    cat ../*.cfg >> ${B}/.config
}
