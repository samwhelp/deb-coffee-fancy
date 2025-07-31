pkgname="bean-appearance-simply-circles-icon-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Simply Circles Icon Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/ju1464/Simply_Circles_Icons/archive/refs/heads/master.tar.gz")
url="https://github.com/samwhelp/deb-coffee-fancy/tree/main/packages/bean-appearance-simply-circles-icon-theme"
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
	echo cd "Simply_Circles_Icons-master"
	cd "Simply_Circles_Icons-master"

	local icons_dir_path="${pkgdir}/usr/share/icons"


	echo
	echo mkdir -p "${icons_dir_path}"
	mkdir -p "${icons_dir_path}"




	local the_theme

	for the_theme in Simply-Circles-GNOME/*; do
		echo
		echo gtk-update-icon-cache -f "${the_theme}"
		gtk-update-icon-cache -f "${the_theme}"
	done





	echo
	echo cp -rfT "Simply-Circles-GNOME" "${icons_dir_path}"
	cp -rfT "Simply-Circles-GNOME" "${icons_dir_path}"




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
