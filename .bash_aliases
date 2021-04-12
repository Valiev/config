# VARIABLES {
#NUMCPU=$(cat /proc/cpuinfo | grep processor | wc -l)

export COLORTERM="truecolor"
github_token="./.github_token"
if [ -f $github_token ]; then
  source $github_token
fi

function git_check_out_fzf() {
  git checkout "$(git branch --all | fzf | tr -d '[:space:]')"
}
alias b="git_check_out_fzf"

function cd_fzf() {
  cd "$(fd --type directory | fzf)"
}
alias jj="cd_fzf"

joom_bashrc="$HOME/.joom_bashrc"
if [ -f $joom_bashrc ]; then
  source $joom_bashrc
fi

bash_aliases="  ~/.bash_aliases"
vimrc="         ~/.vimrc"
gvimrc="        ~/.gvimrc"

export TERM=screen-256color
# export LC_ALL=ru_RU.UTF-8
# export LANG=ru_RU.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=nvim
export PIPENV_VENV_IN_PROJECT=1
export BAT_THEME=zenburn

# }

# STUFF {
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
alias ls="ls"
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
alias pyjs='python -m json.tool'
alias toLower='tr "[[:upper:]]" "[[:lower:]]" '
alias toUpper='tr "[[:lower:]]" "[[:upper:]]" '

alias aws_profiles="cat ~/.aws/credentials | grep '^\[' | tr -d '\[' | tr -d '\]'"
alias epoch="date +%s"

function _pipenv() {
  local DOCKER_IMAGE=$1; shift
  local CUR_DIRNAME=$(basename $PWD)
  docker run -it --rm \
    -v ${PWD}:"/workdir/${CUR_DIRNAME}":rw \
    -v $HOME/.aws:/root/.aws:ro \
    -w "/workdir/${CUR_DIRNAME}" \
    $DOCKER_IMAGE -- $@
}

alias pipenv36="_pipenv pipenv-python3.6"
alias pipenv37="_pipenv pipenv-python3.7"
alias pgcli="docker run -it --rm -e TERM=$TERM jfrog.joom.it/docker-images/devops-pgcli:latest"
# alias pipenv=pipenv36
# }
alias ack="rg"

# TMUX
alias ta='tmux attach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'

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

# VIM {
alias vimba="   vim $bash_aliases"
alias zshrc="   vim ~/.zshrc"
alias vimrc="   vim $vimrc"
alias gvimrc="  vim $gvimrc"
# }

# alias TODO="    vim $todo_global"
alias todo="    ack -w TODO"

# NETWORK {
alias ya="ping ya.ru"
alias нф="ya"
# }
