export COLORTERM="truecolor"

github_token="./.github_token"
if [ -f $github_token ]; then
  source $github_token
fi

function git_check_out_fzf() {
  git checkout "$(git branch --all | fzf | tr -d '[:space:]')"
}

alias b="git_check_out_fzf"
alias e="nvim"
alias to_vim="xargs nvim"
alias to="xargs"

function process_fzf() {
  local dest
  dest=$(fd "$@" | fzf -q "$*")
  if [ -d "$dest" ]; then
    cd "$dest"
  elif [ -f "$dest" ]; then
    nvim "$dest"
  else
    echo "nothing found :("
  fi

}

alias jj="process_fzf"

k8s_bashrc="$HOME/.k8s_bashrc"
if [ -f $k8s_bashrc ]; then
  source $k8s_bashrc
fi

bash_aliases="~/.bash_aliases"
vimrc="~/.vimrc"

export TERM=screen-256color
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=nvim
export PIPENV_VENV_IN_PROJECT=1

export BAT_THEME=zenburn
export BAT_THEME="Monokai Extended Light"
if [ "$ITERM_PROFILE" = "Light" ]; then
  export BAT_THEME="Monokai Extended Light"
fi

alias nocolor='sed -r "s/[[:cntrl:]]\[[0-9]{1,3}m//g"'
alias grep_tf="grep -E '^\W+[~+\-].*'"
alias vim="nvim"
alias b="git_check_out_fzf"
alias k="LC_ALL=en_US.UTF-8 bundle exec kitchen"
alias c="colorize"
alias g="git"
alias n="on_finish"
alias t="terraform"
alias tg="terragrunt"
alias ll="ls -l -h"
alias la="ls -A"
alias repo="cat .git/config | grep url | cut -d= -f2"
alias rm="rm -v"
alias mv="mv -v"
alias wb="whalebrew"
alias pt="parquet-tools"
alias uniq_awk="awk '!seen[\$0]++'"
alias athemes="alacritty-colorscheme -C ~/dev/opensource/alacritty-theme/themes"

alias gitinfo='ssh gitolite@git.aligntech.com'
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

export MANPAGER="sh -c 'col -bx | bat -l man -p '"
alias bat_json="bat -l json"
alias bat_yaml="bat -l yaml"
alias vimba="   vim $bash_aliases"
alias zshrc="   vim ~/.zshrc"
alias vimrc="   vim $vimrc"
