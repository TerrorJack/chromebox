#!/bin/sh -e

nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --update
nix-env -u
nix-env --cores 4 -iA \
  nixpkgs.chromiumDev \
  nixpkgs.gnugrep

nix-channel --remove nixpkgs
rm -rf /nix/store/*-nixpkgs*
nix-collect-garbage -d
nix-store --verify --check-contents
nix optimise-store
rm -rf /tmp/*
