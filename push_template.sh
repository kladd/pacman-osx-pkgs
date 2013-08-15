#!/bin/bash

if [ $1 ]; then
    cp TEMPLATE.mk $1/$1.mk
    pushd $1
    sed -i.bak "s/PKGNAME/$1/g" $1.mk
    rm *.bak
    popd
else
    for pkg in $(ls -d */|sed "s/\///"); do
        cp TEMPLATE.mk $pkg/$pkg.mk
        pushd $pkg
        sed -i.bak "s/PKGNAME/$pkg/g" $pkg.mk
        rm *.bak
        popd
    done
fi
