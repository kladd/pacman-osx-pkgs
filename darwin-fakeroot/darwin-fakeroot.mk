
.PHONY: darwin-fakeroot clean-darwin-fakeroot

darwin-fakeroot: darwin-fakeroot/PKGBUILD
	pushd darwin-fakeroot; makepkg -s; popd

clean-darwin-fakeroot:
	pushd fakeroot; $(RM) -r pkg/ src/ *.tar.*; popd
