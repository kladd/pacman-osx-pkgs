
.PHONY: libgpg-error clean-libgpg-error

libgpg-error: libgpg-error/PKGBUILD
	pushd libgpg-error; makepkg; popd

clean-libgpg-error:
	pushd libgpg-error; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
