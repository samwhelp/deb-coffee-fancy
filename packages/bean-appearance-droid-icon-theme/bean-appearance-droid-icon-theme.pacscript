pkgname="bean-appearance-droid-icon-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Droid Icon Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/SethStormR/Droid/archive/refs/heads/main.tar.gz")
url="https://github.com/samwhelp/deb-coffee-fancy/tree/main/packages/bean-appearance-droid-icon-theme"
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
	echo cd "Droid-main"
	cd "Droid-main"

	local icons_dir_path="${pkgdir}/usr/share/icons"


	echo
	echo mkdir -p "${icons_dir_path}"
	mkdir -p "${icons_dir_path}"


	echo
	echo tar xf Droid.tar.xz
	tar xf Droid.tar.xz


	echo
	echo cp -rfT "Droid" "${icons_dir_path}/Droid"
	cp -rfT "Droid" "${icons_dir_path}/Droid"


	echo
	echo gtk-update-icon-cache "${icons_dir_path}/Droid"
	gtk-update-icon-cache "${icons_dir_path}/Droid"


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
