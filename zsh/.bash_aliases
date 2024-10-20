export COLORTERM="truecolor"
export GODEBUG=asyncpreemptoff=1

GITHUB_TOKEN_PATH="./.github_token"
JIRA_TOKEN_PATH="./.jira_token"
export TERRAGRUNT_FETCH_DEPENDENCY_OUTPUT_FROM_STATE='true'

if [ -f $GITHUB_TOKEN_PATH ]; then
  export HOMEBREW_GITHUB_API_TOKEN=$(< $GITHUB_TOKEN_PATH)
fi

if [ -f $JIRA_TOKEN_PATH ]; then
  export JIRA_API_TOKEN=$(< $JIRA_TOKEN_PATH)
fi

function git_check_out_fzf() {
  git checkout "$(git branch --all | fzf | tr -d '[:space:]')"
}

alias cdr='cd $(git rev-parse --show-toplevel)'
alias b="git_check_out_fzf"
alias e="nvim"
alias to_vim="xargs nvim"
alias to="xargs"

TMUX_FZF_OPTIONS="-p -w 80% -h 80% -m"

k8s_bashrc="$HOME/.k8s_bashrc"
if [ -f $k8s_bashrc ]; then
  source $k8s_bashrc
fi

bash_aliases="~/.bash_aliases"

export TERM=screen-256color
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=nvim

alias nocolor='sed -r "s/[[:cntrl:]]\[[0-9]{1,3}m//g"'
alias grep_tf="grep -E '^\W+[~+\-].*'"
alias vim="nvim"
alias k="LC_ALL=en_US.UTF-8 bundle exec kitchen"
alias c="colorize"
alias g="git"
alias n="on_finish"
alias t="terraform"
alias tg=terragrunt_with_aws_profile
alias ll="ls -l -h"
alias la="ls -A"
alias repo="cat .git/config | grep url | cut -d= -f2"
alias rm="rm -v"
alias mv="mv -v"
alias wb="whalebrew"
alias pt="parquet-tools"
alias uniq_awk="awk '!seen[\$0]++'"
alias athemes="alacritty-colorscheme -C ~/dev/opensource/alacritty-theme/themes"

alias co="git co"
alias co-="git co -"
alias master="git co master"
alias pyjs='python -m json.tool'
alias toLower='tr "[[:upper:]]" "[[:lower:]]" '
alias toUpper='tr "[[:lower:]]" "[[:upper:]]" '
alias skip1="sed -E 's|^[^ ]+ ||'"
alias trim_leading="sed -E 's|(\ )*||'"
alias trim_trailing="sed -E 's|(\ )*$||'"
alias trim="trim_leading | trim_trailing"

alias aws_profiles="cat ~/.aws/credentials | grep '^\[' | tr -d '\[' | tr -d '\]'"
alias epoch="date +%s"
alias ack="rg"

alias pip='python3 -m pip'
alias pip3='python3 -m pip'

function terragrunt_with_aws_profile() {
  if [[ -z "${AWS_PROFILE}" ]]; then
    export AWS_PROFILE=$(aws configure list-profiles | fzf)
  fi
  terragrunt $@
}
function bak() {
  local filepath=$(basename "$1")
  local extension="${filepath##*.}"
  local filename="${filepath%.*}"
  if [[ "X$extension" == "Xbak" ]]; then
    mv -v "$filepath" "$filename"
  else
    mv -v "$filepath" "$filepath.bak"
  fi
}

function yaml2json() {
  python3 -c 'import sys, yaml, json; print(json.dumps(yaml.safe_load(sys.stdin.read())))'
}

function yaml2json_pretty() {
  python3 -c 'import sys, yaml, json; print(json.dumps(yaml.safe_load(sys.stdin.read()), indent=2, sort_keys=False))'
}

function json_validate() {
  python3 -c 'import sys, yaml, json; json.loads(sys.stdin.read())'
}

function json2yaml() {
  python3 -c 'import sys, yaml, json; print(yaml.dump(json.loads(sys.stdin.read())))'
}

fuction apple_interface_style() {
  (defaults read -g AppleInterfaceStyle 2>/dev/null || echo 'light' ) \
    | tr '[:upper:]' '[:lower:]'
}

# Bat themes
# Light:
# - Monokai Extended Light
# - OneHalfLight
# - Solarized (dark)
# - Solarized (light)
# Dark:
# - 1337
# - Dracula
# - Monokai Extended
# - Monokai Extended Origin
# export BAT_LIGHT_THEME="OneHalfLight"
export BAT_LIGHT_THEME="Solarized (dark)"
export BAT_DARK_THEME="Monokai Extended"

function bat_theme() {
  local bat_theme="$BAT_DARK_THEME"
  if [[ "$(apple_interface_style)" == "light" ]]; then
    bat_theme="$BAT_LIGHT_THEME"
  fi
  echo "$bat_theme"
}

function bat_color() {
  bat --theme="$(bat_theme)" $@
}

alias bat=bat_color
export MANPAGER="sh -c 'col -bx | bat_color -l man -p '"
alias bat_json="bat -l json"
alias bat_yaml="bat -l yaml"
alias vimba="vim $bash_aliases"
alias zshrc="vim $HOME/.zshrc"
alias vimrc="vim $HOME/.config/nvim/"
alias tmuxrc="vim $HOME/.tmux.conf"
