
.PHONY: lmod clean-lmod

lmod: lmod/PKGBUILD
	pushd lmod; makepkg; popd

clean-lmod:
	pushd lmod; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
