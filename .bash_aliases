# VARIABLES {
#NUMCPU=$(cat /proc/cpuinfo | grep processor | wc -l)

bash_aliases="  ~/.bash_aliases"
vimrc="         ~/.vimrc"
gvimrc="        ~/.gvimrc"

export EDITOR=vim

strerror() {python -c "import os; print os.strerror($1)"}
# }

# STUFF {
alias b="   butler"
alias k="   kitchen"
alias c="   colorize"
alias g="   git"
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
