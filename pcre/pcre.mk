
.PHONY: pcre clean-pcre

pcre: pcre/PKGBUILD
	pushd pcre; makepkg; popd

clean-pcre:
	pushd pcre; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
