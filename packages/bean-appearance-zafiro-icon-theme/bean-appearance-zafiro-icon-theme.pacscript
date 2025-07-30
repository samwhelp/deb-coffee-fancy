pkgname="bean-appearance-zafiro-icon-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Zafiro Icon Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/zayronxio/Zafiro-icons/archive/refs/heads/master.tar.gz")
url="https://github.com/samwhelp/deb-coffee-fancy/tree/main/packages/bean-appearance-zafiro-icon-theme"
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
	echo cd "Zafiro-icons-master"
	cd "Zafiro-icons-master"

	local icons_dir_path="${pkgdir}/usr/share/icons"


	echo
	echo mkdir -p "${icons_dir_path}"
	mkdir -p "${icons_dir_path}"


	echo
	echo cp -rfT "Dark" "${icons_dir_path}/Zafiro-Dark"
	cp -rfT "Dark" "${icons_dir_path}/Zafiro-Dark"


	echo
	echo cp -rfT "Light" "${icons_dir_path}/Zafiro-Light"
	cp -rfT "Light" "${icons_dir_path}/Zafiro-Light"




	echo
	echo gtk-update-icon-cache "${icons_dir_path}/Zafiro-Dark"
	gtk-update-icon-cache "${icons_dir_path}/Zafiro-Dark"


	echo
	echo gtk-update-icon-cache "${icons_dir_path}/Zafiro-Light"
	gtk-update-icon-cache "${icons_dir_path}/Zafiro-Light"




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
