
.PHONY: libxml2 clean-libxml2

libxml2: libxml2/PKGBUILD
	pushd libxml2; makepkg -s; popd

clean-libxml2:
	pushd libxml2; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
