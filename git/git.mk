
.PHONY: git clean-git

git: git/PKGBUILD
	pushd git; makepkg -s; popd

clean-git:
	pushd git; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
