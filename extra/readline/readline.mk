
.PHONY: readline clean-readline

readline: readline/PKGBUILD
	pushd readline; makepkg; popd

clean-readline:
	pushd readline; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
