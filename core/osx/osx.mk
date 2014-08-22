
.PHONY: osx clean-osx

osx: core/osx/PKGBUILD
	pushd core/osx; makepkg; popd

clean-osx:
	pushd core/osx; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
