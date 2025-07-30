pkgname="bean-appearance-oneui-icon-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="OneUI Icon Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/mjkim0727/OneUI4-Icons/archive/refs/heads/main.tar.gz")
url="https://github.com/samwhelp/deb-coffee-fancy/tree/main/packages/bean-appearance-oneui-icon-theme"
depends=()
pacdeps=()
replace=()




package () {

	echo
	echo "##"
	echo "## ## Call package"
	echo "##"
	echo

	#pwd

	#echo
	#echo cd "${_archive}"
	#cd "${_archive}"

	echo
	echo cd "OneUI4-Icons-main"
	cd "OneUI4-Icons-main"

	local icons_dir_path="${pkgdir}/usr/share/icons"


	echo
	echo mkdir -p "${icons_dir_path}"
	mkdir -p "${icons_dir_path}"


	echo
	echo cp -rfT "OneUI" "${icons_dir_path}/OneUI"
	cp -rfT "OneUI" "${icons_dir_path}/OneUI"


	echo
	echo cp -rfT "OneUI-dark" "${icons_dir_path}/OneUI-dark"
	cp -rfT "OneUI-dark" "${icons_dir_path}/OneUI-dark"


	echo
	echo cp -rfT "OneUI-light" "${icons_dir_path}/OneUI-light"
	cp -rfT "OneUI-light" "${icons_dir_path}/OneUI-light"




	echo
	echo gtk-update-icon-cache -f "${icons_dir_path}/OneUI"
	gtk-update-icon-cache -f "${icons_dir_path}/OneUI"


	echo
	echo gtk-update-icon-cache -f "${icons_dir_path}/OneUI-dark"
	gtk-update-icon-cache -f "${icons_dir_path}/OneUI-dark"


	echo
	echo gtk-update-icon-cache -f "${icons_dir_path}/OneUI-light"
	gtk-update-icon-cache -f "${icons_dir_path}/OneUI-light"




	echo
	echo cd "${OLDPWD}"
	cd "${OLDPWD}"
	echo




	echo
	echo "##"
	echo "## ## Done"
	echo "##"
	echo


	return 0
}
