pkgname="bean-appearance-stormtrooper-icon-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="StormTrooper Icon Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/SethStormR/Stormtrooper/archive/refs/heads/main.tar.gz")
url="https://github.com/samwhelp/deb-coffee-fancy/tree/main/packages/bean-appearance-stormtrooper-icon-theme"
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
	echo cd "Stormtrooper-main"
	cd "Stormtrooper-main"

	local icons_dir_path="${pkgdir}/usr/share/icons"


	echo
	echo mkdir -p "${icons_dir_path}"
	mkdir -p "${icons_dir_path}"


	echo
	echo tar xf StormTrooper.tar.xz
	tar xf StormTrooper.tar.xz


	echo
	echo cp -rfT "StormTrooper" "${icons_dir_path}/StormTrooper"
	cp -rfT "StormTrooper" "${icons_dir_path}/StormTrooper"


	echo
	echo gtk-update-icon-cache -f "${icons_dir_path}/StormTrooper"
	gtk-update-icon-cache -f "${icons_dir_path}/StormTrooper"


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
