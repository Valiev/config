# Path to your oh-my-zsh configuration.
plugins=(
  auto-notify
  almostontop
  vi-mode
  brew
  docker
  extract
  fzf
  # fasd
  fancy-ctrl-z
  git
  git-extras
  kubectl
  macos
  terraform
  themes
  # tmux
  zsh-syntax-highlighting
)
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bunnyruni"
ZSH_DISABLE_COMPFIX=true
export PATH=/opt/homebrew/bin:/usr/local/sbin:/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin
export PATH="/opt/homebrew/opt/kubernetes-cli@1.22/bin:$PATH"

alias - -='cd -'
alias -g VIM='| xargs nvim'

AUTO_NOTIFY_IGNORE+=("git")
zstyle ":completion:*:commands" rehash 1

DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

source ~/.bash_aliases
source $ZSH/oh-my-zsh.sh

# Better history search
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down]]
bindkey '^J' fzf-history-widget
bindkey '^[j' fzf-history-widget

COMPLETION_WAITING_DOTS="true"
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";

function fasd_cd_fzf() {
  local cd_paths=$(echo "$*" | tr '-' ' ' | tr '_' ' ' | xargs fasd -ldR)
  local cd_path=$(echo "$cd_paths" | fzf --reverse -0 -1 -q "$*")
  if [ -d "$cd_path" ]; then
    cd "$cd_path"
  else
    cd $(fd -t=d . ~ -E /Library/ -E /Documents/ | fzf --reverse -0 -1 -q "$*")
  fi
}

alias j=fasd_cd_fzf

# Customize to your needs...
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export TGENV_ARCH=arm64
export TFENV_ARCH=arm64

export FZF_COMPLETION_TRIGGER='...'
export FZF_CTRL_T_OPTS="--select-1 --exit-0"
export HOMEBREW_NO_AUTO_UPDATE=1

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
