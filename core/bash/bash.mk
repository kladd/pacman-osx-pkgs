
.PHONY: bash clean-bash

bash: core/bash/PKGBUILD
	pushd core/bash; makepkg; popd

clean-bash:
	pushd core/bash; $(RM) -r pkg/ src/ *.tar.* *.patch; popd
