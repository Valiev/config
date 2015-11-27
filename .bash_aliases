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


# VIM {
alias vim="     vim -p"
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
