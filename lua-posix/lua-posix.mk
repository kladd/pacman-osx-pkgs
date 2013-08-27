
.PHONY: lua-posix clean-lua-posix

lua-posix: lua-posix/PKGBUILD
	pushd lua-posix; makepkg -s; popd

clean-lua-posix:
	pushd lua-posix; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
