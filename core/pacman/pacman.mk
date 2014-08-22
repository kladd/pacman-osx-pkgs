
.PHONY: pacman clean-pacman

pacman: core/pacman/PKGBUILD
	pushd core/pacman; makepkg; popd

clean-pacman:
	pushd core/pacman; $(RM) -r pkg/ src/ *.tar.*; popd
