#!/usr/bin/env bash
set -e

# command line utils
brew install \
  fzf \
  ripgrep \
  wget \
  zoxide \
  powerlevel10k \
  fd \
  bat \
  showkey \
  cmatrix \
  ncdu \
  tree \
  watch \
  tcpdump \
  telnet \
  pipx \
  yq \
  flock

# k8s
brew install \
  kubectl \
  kustomize

# tmux & terminal
brew install \
  iterm2 \
  tmux \
  tpm \
  reattach-to-user-namespace

# coding
brew install \
  pyenv \
  nvim \
  pre-commit \
  gh

# internet
brew install \
  google-chrome \
  pritunl \
  outline
brew install --cask arc

# apps
brew install \
  1password \
  cyberduck \
  ollama \
  porting-kit \
  rocket \
  slack \
  spotify \
  tailscale

# misc
brew install \
  font-hack-nerd-font \
  the-unarchiver
