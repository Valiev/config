# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  # source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
# typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

eval "$(oh-my-posh -c ~/.config/oh-my-posh/config.toml init zsh)"
# eval "$(oh-my-posh -c ~/.config/oh-my-posh/config.toml init zsh)"

# Path to your oh-my-zsh configuration.
plugins=(
  auto-notify
  #almostontop
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
# ZSH_THEME="bunnyruni"
# ZSH_THEME="ys"
ZSH_THEME="tjkirch"
ZSH_DISABLE_COMPFIX=true
export PATH=/opt/homebrew/bin:/usr/local/sbin:/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin
export PATH="/opt/homebrew/opt/kubernetes-cli@1.22/bin:$PATH"

alias - -='cd -'
alias -g VIM='| xargs nvim'
alias -g JQ='| jq'
alias -g FLUX='-n flux logs deploy/flux -c flux'

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

# function fasd_cd_fzf() {
#   local cd_paths=$(echo "$*" | tr '-' ' ' | tr '_' ' ' | xargs fasd -ldR)
#   local cd_path=$(echo "$cd_paths" | fzf --reverse -0 -1 -q "$*")
#   if [ -d "$cd_path" ]; then
#     cd "$cd_path"
#   else
#     cd $(fd -t=d . ~ -E /Library/ -E /Documents/ | fzf --reverse -0 -1 -q "$*")
#   fi
# }

# alias j=fasd_cd_fzf

# Customize to your needs...
# brew
eval "$(/opt/homebrew/bin/brew shellenv)"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export PATH="$HOME/.local/bin:$PATH"
# export PATH="$HOME/.cargo/bin:$PATH"
#source "$HOME/.cargo/env"
export TGENV_ARCH=arm64
export TFENV_ARCH=arm64

export FZF_COMPLETION_TRIGGER='...'
export FZF_CTRL_T_OPTS="--select-1 --exit-0"
export HOMEBREW_NO_AUTO_UPDATE=1

# source $HOME/.cargo/env
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(zoxide init --cmd j zsh)"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.tars/shell/.tars.zsh ] && source ~/.tars/shell/.tars.zsh

# export PATH="/opt/homebrew/opt/pyside@2/bin:$PATH"
