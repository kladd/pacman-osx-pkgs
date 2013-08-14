
.PHONY: PKGNAME clean-PKGNAME

PKGNAME: PKGNAME/PKGBUILD
	pushd PKGNAME; makepkg; popd

clean-PKGNAME:
	pushd PKGNAME; $(RM) -r pkg/ src/ *.tar.*; popd
