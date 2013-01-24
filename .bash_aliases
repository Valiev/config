# VARIABLES {
NUMCPU=$(cat /proc/cpuinfo | grep processor | wc -l)

cpp_files=" *.cpp"
c_files="   *.c"
h_files="   *.h"
py_files="  *.py"
tex_files=" *.tex"

bash_aliases="  ~/.bash_aliases"
vimrc="         ~/.vimrc"
gvimrc="        ~/.gvimrc"
todo_global="   ~/TODO"
todo_local="    TODO"
xmonad_conf="   ~/.xmonad/xmonad.hs"

PATH="$PATH:/sbin:/usr/sbin" # Debian workaround
# }

# STUFF {
alias ls="  ls --color='yes'"
alias ll="  ls -l -h"
alias la="  ls -A"

alias rm="  rm -v"
alias cdgwt="   cd ~/git/work/tests"

alias mv="      mv -v"
alias mgrep='   find . -type f | xargs -d "\n" -P $NUMCPU grep'

alias hibr="    sudo hibernate-ram"
# }

# VIM {
alias vim="     vim -p"
alias vimba="   vim $bash_aliases"
alias vimrc="   vim $vimrc"
alias gvimrc="  vim $gvimrc"
alias vimcpp="  vim $cpp_files"
alias vimc="    vim $c_files"
alias vimtex="  vim $tex_files"
alias vimpy="   vim $py_files"
alias vimxmonad="   vim $xmonad_conf"
# }

alias TODO="    vim $todo_global"
alias todo="    vim $todo_local"

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

# XMONAD {
alias xmonad_recompile="xmonad --recompile"
# }
