
.PHONY: pinentry clean-pinentry

pinentry: pinentry/PKGBUILD
	pushd pinentry; makepkg; popd

clean-pinentry:
	pushd pinentry; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
