# VARIABLES {
#NUMCPU=$(cat /proc/cpuinfo | grep processor | wc -l)

. ~/.todo.cfg

cpp_files=" *.cpp"
c_files="   *.c"
h_files="   *.h"
py_files="  *.py"
rb_files="  *.rb"
tex_files=" *.tex"

bash_aliases="  ~/.bash_aliases"
vimrc="         ~/.vimrc"
gvimrc="        ~/.gvimrc"
# todo_global="   ~/TODO"
# todo_local="    TODO"
xmonad_conf="   ~/.xmonad/xmonad.hs"

PATH="$PATH:/sbin:/usr/sbin" # Debian workaround
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

alias mv="      mv -v"
alias mgrep='   find . -type f | xargs -d "\n" -P $NUMCPU grep'

alias hibr="    sudo hibernate-ram"
alias spu='     sudo port uninstall'
alias t="todo.sh"
alias gitinfo='ssh gitolite@git.aligntech.com'
alias lolless='lolcat | less'
alias pyjs='python -m json.tool'
alias toLower='tr "[[:upper:]]" "[[:lower:]]" '
alias toUpper='tr "[[:lower:]]" "[[:upper:]]" '
# alias first  = 'awk { print $1 }'
# alias first = 'awk \'{ print $1 }\' '
# }
#
#
# VIM {
alias vim="     vim -p"
alias vimba="   vim $bash_aliases"
alias zshrc="   vim ~/.zshrc"
alias vimrc="   vim $vimrc"
alias gvimrc="  vim $gvimrc"
alias vimcpp="  vim $cpp_files"
alias vimc="    vim $c_files"
alias vimtex="  vim $tex_files"
alias vimpy="   vim $py_files"
alias vimrb="   vim $rb_files"
alias vimxmonad="   vim $xmonad_conf"
# }

# alias TODO="    vim $todo_global"
alias todo="    ack -w TODO"

# GVIM {
alias gvim="    gvim -p"
alias gvimcpp=" gvim $cpp_files"
alias gvimc="   gvim $c_files "
alias gvimtex=" gvim $tex_files"
alias gvimpy="  gvim $py_files"
# }

# NETWORK {
alias ya="ping ya.ru"
alias нф="ya"
# }
