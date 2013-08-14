
.PHONY: bash clean-bash

bash: bash/PKGBUILD
	pushd bash; makepkg; popd

clean-bash:
	pushd bash; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
