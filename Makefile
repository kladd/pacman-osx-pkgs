# Makefile
#
# builds any and all packages
#

PKGS := core

include $(foreach pkg, $(PKGS), $(shell echo "$(pkg)/$(pkg).mk"))

.PHONY: all clean push-template

all: $(PKGS)
clean: $(foreach pkg, $(PKGS), clean-$(pkg))
