
.PHONY: gnupg clean-gnupg

gnupg: gnupg/PKGBUILD
	pushd gnupg; makepkg; popd

clean-gnupg:
	pushd gnupg; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
