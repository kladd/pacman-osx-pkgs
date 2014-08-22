
.PHONY: gettext clean-gettext

gettext: core/gettext/PKGBUILD
	pushd core/gettext; makepkg -s; popd

clean-gettext:
	pushd core/gettext; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
