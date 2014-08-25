# Makefile
#
# builds any/all extra packages
#

EXTRA_PKGS := $(shell ls -d extra/*/|sed "s/extra//g"| sed "s/\///g")

include $(foreach pkg, $(EXTRA_PKGS), $(shell echo "extra/$(pkg)/$(pkg).mk"))

.PHONY: extra extra-clean

extra: $(EXTRA_PKGS)
extra-clean: $(foreach pkg, $(EXTRA_PKGS), clean-$(pkg))
