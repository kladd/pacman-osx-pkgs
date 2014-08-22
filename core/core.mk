# Makefile
#
# builds any/all core packages
#

CORE_PKGS := $(shell ls -d core/*/|sed "s/core//g"| sed "s/\///g")

include $(foreach pkg, $(CORE_PKGS), $(shell echo "core/$(pkg)/$(pkg).mk"))

.PHONY: core core-clean

core: $(CORE_PKGS)
core-clean: $(foreach pkg, $(CORE_PKGS), clean-$(pkg))
