pkgname="bean-appearance-snow-icon-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Snow Icon Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/samwhelp/snow-icon-theme/archive/refs/heads/port.tar.gz")
url="https://github.com/samwhelp/deb-coffee-fancy/tree/main/packages/bean-appearance-snow-icon-theme"
depends=()
pacdeps=()
replace=()


##
## source=("https://github.com/SethStormR/Snow/archive/refs/heads/main.tar.gz")
##


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
	echo cd "snow-icon-theme-port"
	cd "snow-icon-theme-port"

	local icons_dir_path="${pkgdir}/usr/share/icons"


	echo
	echo mkdir -p "${icons_dir_path}"
	mkdir -p "${icons_dir_path}"




	##
	## ## default edition
	##

	echo
	echo tar xf Snow.tar.xz
	tar xf Snow.tar.xz


	echo
	echo cp -rfT "Snow" "${icons_dir_path}/Snow"
	cp -rfT "Snow" "${icons_dir_path}/Snow"


	echo
	echo gtk-update-icon-cache -f "${icons_dir_path}/Snow"
	gtk-update-icon-cache -f "${icons_dir_path}/Snow"




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
