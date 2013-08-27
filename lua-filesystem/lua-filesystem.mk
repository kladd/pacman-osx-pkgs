
.PHONY: lua-filesystem clean-lua-filesystem

lua-filesystem: lua-filesystem/PKGBUILD
	pushd lua-filesystem; makepkg -s; popd

clean-lua-filesystem:
	pushd lua-filesystem; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
