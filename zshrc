# Path to your oh-my-zsh configuration.
plugins=(
  auto-notify
  almostontop
  vi-mode
  # autojump
  # battery
  brew
  # bundle
  # colorize
  # command-not-found
  # dircycle
  # dirhistory
  docker
  # emoji
  # emoji-clock
  extract
  fzf
  # gem
  git
  git-extras
  # jsontools
  kubectl
  # kitchen
  # lol
  # npm
  macos
  # sprunge
  # sublime
  terraform
  themes
  # tmux
  zsh-syntax-highlighting
  # z
)
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bunnyruni"
ZSH_DISABLE_COMPFIX=true
export PATH=/opt/homebrew/bin:/usr/local/sbin:/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin

alias - -='cd -'

AUTO_NOTIFY_IGNORE+=("git")
zstyle ":completion:*:commands" rehash 1

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# source /Users/svaliev/.oh-my-zsh/custom/plugins/auto-ls/auto-ls.zsh
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

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

COMPLETION_WAITING_DOTS="true"
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";

fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

mac_lock_screen () {
  pmset displaysleepnow
}
function ec2() {
  aws ec2 describe-instances \
    --filters "Name=tag:Name,Values=*$1*" "Name=tag:Environment,Values=*$2*" \
    --output text \
    --query 'Reservations[].Instances[].[Tags[?Key==`Name`] | [0].Value, InstanceId, Tags[?Key==`Environment`] | [0].Value, NetworkInterfaces[*].PrivateIpAddresses[*].PrivateIpAddress]'
}

function fasd_cd_fzf() {
  local cd_paths=$(echo "$*" | xargs fasd -ldR)
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
export FZF_COMPLETION_TRIGGER='...'
export FZF_CTRL_T_OPTS="--select-1 --exit-0"
export HOMEBREW_NO_AUTO_UPDATE=1

# source /Users/svaliev/.config/broot/launcher/bash/br
