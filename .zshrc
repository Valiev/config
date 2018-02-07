# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="wezm"

alias - -='cd -'

zstyle ":completion:*:commands" rehash 1

# Haskell Stack completion
# uncomment for haskell development
# autoload -U +X compinit && compinit
# autoload -U +X bashcompinit && bashcompinit
# eval "$(stack --bash-completion-script stack)"


# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  almostontop
  autojump
  # fasd
  # battery
  brew
  # bundle
  # colorize
  # command-not-found
  dircycle
  dirhistory
  docker
  emoji
  emoji-clock
  extract
  # fzf
  gem
  git
  git-extras
  # jsontools
  # kitchen
  knife
  # lol
  # npm
  osx
  sprunge
  sublime
  # terraform
  themes
  tmux
  zsh-navigation-tools
  z
)

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# ZSH_HIGHLIGHT_STYLES[cursor]='bg=blue'

source ~/.bash_aliases
source $ZSH/oh-my-zsh.sh

# Better history search
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down]]

zle -N znt-kill-widget
bindkey "^K" znt-kill-widget

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

alias j=z
. /usr/local/etc/profile.d/z.sh

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/valiev/.rvm/bin
export PATH=/usr/local/Cellar/ruby/2.3.0/bin:$PATH
export PATH=/Users/valiev/.cabal/bin:$PATH
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

source /usr/local/share/zsh/site-functions/_awless
# Python magic
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
source $HOME/.cargo/env
