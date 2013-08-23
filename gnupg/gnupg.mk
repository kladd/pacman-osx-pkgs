
.PHONY: gnupg clean-gnupg

gnupg: gnupg/PKGBUILD
	pushd gnupg; makepkg -s; popd

clean-gnupg:
	pushd gnupg; $(RM) -r pkg/ src/ *.tar.*; popd
