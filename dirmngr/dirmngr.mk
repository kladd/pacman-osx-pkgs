
.PHONY: dirmngr clean-dirmngr

dirmngr: dirmngr/PKGBUILD
	pushd dirmngr; makepkg; popd

clean-dirmngr:
	pushd dirmngr; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
