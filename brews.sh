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
  flock \
  jq \
  ;

# k8s
brew install \
  kubectl \
  kustomize \
  ;

# tmux & terminal
brew install \
  iterm2 \
  tmux \
  tpm \
  reattach-to-user-namespace \
  font-hack-nerd-font \
  font-jetbrains-mono-nerd-font \
  ;

# coding
brew install \
  pyenv \
  nvim \
  pre-commit \
  gh \
  git-delta \
  ;

# internet
brew install \
  google-chrome \
  pritunl \
  outline \
  ;


# apps
brew install \
  1password \
  cyberduck \
  ollama \
  porting-kit \
  rocket \
  spotify \
  obsidian \
  ;

# misc
brew install \
  the-unarchiver \
  ;
