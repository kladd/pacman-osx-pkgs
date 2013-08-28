
.PHONY: xz clean-xz

xz: xz/PKGBUILD
	pushd xz; makepkg -s; popd

clean-xz:
	pushd xz; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
