pkgname="bean-appearance-orion-icon-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Orion Icon Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/SethStormR/Orion/archive/refs/heads/main.tar.gz")
url="https://github.com/samwhelp/deb-coffee-fancy/tree/main/packages/bean-appearance-orion-icon-theme"
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
	echo cd "Orion-main"
	cd "Orion-main"

	local icons_dir_path="${pkgdir}/usr/share/icons"


	echo
	echo mkdir -p "${icons_dir_path}"
	mkdir -p "${icons_dir_path}"


	echo
	echo tar xf Orion.tar.xz
	tar xf Orion.tar.xz


	echo
	echo cp -rfT "Orion" "${icons_dir_path}/Orion"
	cp -rfT "Orion" "${icons_dir_path}/Orion"


	echo
	echo gtk-update-icon-cache "${icons_dir_path}/Orion"
	gtk-update-icon-cache "${icons_dir_path}/Orion"


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
