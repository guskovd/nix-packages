#!/usr/bin/env sh
# -*- coding: utf-8 -*-

source $stdenv/setup

buildPhase() {
    pip install . --root=$out
}

installPhase() {
    mv $out/$python/lib $out/lib
    mv $out/$python/bin $out/bin
    rm $out/nix -rf
}

genericBuild
