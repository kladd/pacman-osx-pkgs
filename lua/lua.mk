
.PHONY: lua clean-lua

lua: lua/PKGBUILD
	pushd lua; makepkg -s; popd

clean-lua:
	pushd lua; $(RM) -r pkg/ src/ *.tar.*; popd
