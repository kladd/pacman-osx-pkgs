
.PHONY: zlib clean-zlib

zlib: zlib/PKGBUILD
	pushd zlib; makepkg -s; popd

clean-zlib:
	pushd zlib; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
