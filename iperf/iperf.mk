
.PHONY: iperf clean-iperf

iperf: iperf/PKGBUILD
	pushd iperf; makepkg; popd

clean-iperf:
	pushd iperf; $(RM) -r pkg/ src/ *.tar.*; popd
