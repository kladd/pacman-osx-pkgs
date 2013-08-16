
.PHONY: libassuan clean-libassuan

libassuan: libassuan/PKGBUILD
	pushd libassuan; makepkg; popd

clean-libassuan:
	pushd libassuan; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
