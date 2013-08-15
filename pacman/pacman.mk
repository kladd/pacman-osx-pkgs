
.PHONY: pacman clean-pacman

pacman: pacman/PKGBUILD
	pushd pacman; makepkg; popd

clean-pacman:
	pushd pacman; $(RM) -r pkg/ src/ *.tar.*; popd
