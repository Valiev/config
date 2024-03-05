#!/bin/bash

set -exu -o pipefail

# Install `stow` CLI tool
command -v stow || brew install stow

# Run stow against given packages
for package in \
  zsh \
  alacritty \
  git;
  do stow $package -t ~ -vv;
done
