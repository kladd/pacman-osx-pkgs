
.PHONY: darwin-fakeroot clean-darwin-fakeroot

darwin-fakeroot: core/darwin-fakeroot/PKGBUILD
	pushd core/darwin-fakeroot; makepkg -s; popd

clean-darwin-fakeroot:
	pushd core/darwin-fakeroot; $(RM) -r pkg/ src/ *.tar.*; popd
