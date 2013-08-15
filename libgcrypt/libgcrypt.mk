
.PHONY: libgcrypt clean-libgcrypt

libgcrypt: libgcrypt/PKGBUILD
	pushd libgcrypt; makepkg; popd

clean-libgcrypt:
	pushd libgcrypt; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
