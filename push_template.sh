#!/bin/bash


for pkg in $(ls -d */|sed "s/\///"); do
    cp TEMPLATE.mk $pkg/$pkg.mk
    pushd $pkg
    sed -i.bak "s/PKGNAME/$pkg/g" $pkg.mk
    rm *.bak
    popd
done
