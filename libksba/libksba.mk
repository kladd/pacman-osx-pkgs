
.PHONY: libksba clean-libksba

libksba: libksba/PKGBUILD
	pushd libksba; makepkg; popd

clean-libksba:
	pushd libksba; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
