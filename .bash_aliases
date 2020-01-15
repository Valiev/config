# VARIABLES {
#NUMCPU=$(cat /proc/cpuinfo | grep processor | wc -l)

github_token="./.github_token"
if [ -f $github_token ]; then
  source $github_token
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

strerror() {
  python -c "import os; print os.strerror($1)"
}
# }

# STUFF {
# alias kitchen="chef exec kitchen"
# alias berks="chef exec berks"
# alias knife="chef exec knife"
alias vim="nvim"
alias b="butler"
alias k="LC_ALL=en_US.UTF-8 bundle exec kitchen"
alias kconverge="k converge"
alias kdestroy="k destroy"
alias kcreate="k create"
alias c="colorize"
alias g="git"
alias n="on_finish"
alias t="terraform"
alias ls="lsd"
alias ll="ls -l -h"
alias la="ls -A"
alias repo="cat .git/config | grep url | cut -d= -f2"
alias rm="rm -v"
alias mv="mv -v"
alias wb="whalebrew"

alias gitinfo='ssh gitolite@git.aligntech.com'
alias pyjs='python -m json.tool'
alias toLower='tr "[[:upper:]]" "[[:lower:]]" '
alias toUpper='tr "[[:lower:]]" "[[:upper:]]" '

alias aws_login_py="docker run --rm -it -e USER=$USER -v $HOME/.aws:/root/.aws joom-aws-saml-login"
# alias zappa="pipenv run zappa"
alias epoch="date +%s"

function _pipenv() {
  local DOCKER_IMAGE=$1; shift
  local DIRNAME=$(basename $PWD)
  local VENVPATH=".local/share/virtualenvs"
  docker run -it --rm \
    -v $HOME/$VENVPATH:/root/$VENVPATH  \
    -v ${PWD}:"/workdir/$DIRNAME":rw \
    -v $HOME/.aws:/root/.aws:ro \
    -w "/workdir/$DIRNAME" \
    pipenv-python3.6 $@
}

alias pipenv36="_pipenv pipenv-python3.6"
alias pipenv37="_pipenv pipenv-python3.7"
# alias pipenv=pipenv36
# }
alias ack="rg"
# List only directories
# alias lsd='ls -l | grep "^d"'

# List with permissions
alias lp="ls -l | awk '
{
  k=0;
  for (i=0;i<=8;i++)
    k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));
  if (k)
    printf(\"%0o \",k);
  printf(\" %9s  %3s %2s %5s  %6s  %s %s %s\n\", \$3, \$6, \$7, \$8, \$5, \$9,\$10, \$11);
}'"

# TMUX
alias ta='tmux attach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'

alias pip='python3 -m pip'

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

function growl() {
  terminal-notifier -activate com.googlecode.iterm2 -title "iTerm2 notification" -subtitle "A message from your shell:" -message "$@"
}

function on_finish() {
  exit_code=$?
  last_cmd=`history | tail -1 | cut -d' ' -f2-`
  say -v Alex "task is finished"
  terminal-notifier -activate com.googlecode.iterm2 \
    -title "iTerm2 notification"                    \
    -subtitle "$last_cmd"                           \
    -message "exit code: $exit_code"
}

function knife_env_fuzzy_search() {
  local env=$1
  local search_term=$2
  if [[ "X$search_term" == "X" ]]; then
    knife search "chef_environment:$env"
  else
    knife search "chef_environment:$env AND (recipe:*$search_term* OR role:*$search_term* OR name:*$search_term*)"
  fi
}

function env_releases() {
  local env=$1
  knife environment show $env -a default_attributes.releases
}

function topcmds() {
  LC_CTYPE=C
  LANG=C

  local n=$1
  if [ -z "$n" ]; then
    n=10
  fi

  cat $HISTFILE | cut -d';' -f2 | awk '{ print $1 }' | grep -Ev '^#' | tr -d '|' | sort | uniq -c | sort -n -r | head -n $n
}

# alias knife_env="knife_env_fuzzy_search"
# VIM {
alias vimba="   vim $bash_aliases"
alias zshrc="   vim ~/.zshrc"
alias vimrc="   vim $vimrc"
alias gvimrc="  vim $gvimrc"
# }

# alias TODO="    vim $todo_global"
alias todo="    ack -w TODO"

# GVIM {
alias gvim="    gvim -p"
# }

# NETWORK {
alias ya="ping ya.ru"
alias нф="ya"
# }
