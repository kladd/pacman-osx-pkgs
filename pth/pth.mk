
.PHONY: pth clean-pth

pth: pth/PKGBUILD
	pushd pth; makepkg; popd

clean-pth:
	pushd pth; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
