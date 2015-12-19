# VARIABLES {
#NUMCPU=$(cat /proc/cpuinfo | grep processor | wc -l)

bash_aliases="  ~/.bash_aliases"
vimrc="         ~/.vimrc"
gvimrc="        ~/.gvimrc"

export EDITOR=vim

strerror() {python -c "import os; print os.strerror($1)"}
# }

# STUFF {
alias kitchen="chef exec kitchen"
alias berks="chef exec berks"
alias knife="chef exec knife"
alias b="   butler"
alias k="   kitchen"
alias c="   colorize"
alias g="   git"
alias n="   on_finish"
alias t="   terraform"
alias ls="  ls --color='yes'"
alias ll="  ls -l -h"
alias la="  ls -A"
alias repo="cat .git/config | grep url | cut -d= -f2"
alias rm="  rm -v"
alias mv="  mv -v"
alias gitinfo='ssh gitolite@git.aligntech.com'
alias pyjs='python -m json.tool'
alias toLower='tr "[[:upper:]]" "[[:lower:]]" '
alias toUpper='tr "[[:lower:]]" "[[:upper:]]" '
# }

# TMUX
alias ta='tmux attach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'

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
  knife search "chef_environment:$env AND (recipe:*$search_term* OR role:*$search_term* OR name:*$search_term*)"
}

function env_releases() {
  local env=$1
  knife environment show $env -a default_attributes.releases
}

function env_e1() {
  knife_env_fuzzy_search E1 $1
}

function env_s3() {
  knife_env_fuzzy_search S3 $1
}

function env_et() {
  knife_env_fuzzy_search ET $1
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

alias knife_env="knife_env_fuzzy_search"
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
