FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append:class-target = " file://fw_env.config"

do_install:append:class-target() {
	# echo "Installing ........ ${THISDIR}, ${WORKDIR}"
	# ls ${THISDIR}/files
	# echo "-------------------"
	# cat ${WORKDIR}/fw_env.config
	install -d ${D}${sysconfdir}
	install -m 644 ${WORKDIR}/fw_env.config ${D}${sysconfdir}
}

FILES:${PN}:append:class-target = " ${sysconfdir}"
