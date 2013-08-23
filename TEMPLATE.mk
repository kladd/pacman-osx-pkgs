
.PHONY: PKGNAME clean-PKGNAME

PKGNAME: PKGNAME/PKGBUILD
	pushd PKGNAME; makepkg -s; popd

clean-PKGNAME:
	pushd PKGNAME; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
