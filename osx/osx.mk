
.PHONY: osx clean-osx

osx: osx/PKGBUILD
	pushd osx; makepkg; popd

clean-osx:
	pushd osx; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
