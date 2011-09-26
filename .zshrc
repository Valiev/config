# Created by newuser for 4.3.10
autoload -U compinit && compinit
autoload -U promptinit && promptinit
autoload -z colors && colors
autoload -U colors && colors
autoload run-help

export COLORTERM=yes
export EDITOR=vim
umask 0077

bindkey '\e[3~' delete-char # del
bindkey ';5D' backward-word # ctrl+left 
bindkey ';5C' forward-word #ctrl+right
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
# bindkey -v

# HISTORY
HISTFILE=~/.history
HISTSIZE=20000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_NO_STORE # не заносить команду history в history

#prompt adam1
prompt bart
#RPROMPT='[%F{green}%T%f]'
#PROMPT='[{orage}%~]'

setopt AUTO_CD
setopt CORRECT
setopt BRACECCL
setopt NO_BEEP

LS_COLORS='no=00;37:fi=00;37:di=01;36:ln=04;36:pi=33:so=01;35:do=01;35:bd=33;01:cd=33;01:or=31;01:su=37:sg=30:tw=30:ow=34:st=37:ex=01;31:*.cmd=01;31:*.exe=01;31:*.com=01;31:*.btm=01;31:*.sh=01;31:*.run=01;31:*.tar=33:*.tgz=33:*.arj=33:*.taz=33:*.lzh=33:*.zip=33:*.z=33:*.Z=33:*.gz=33:*.bz2=33:*.deb=33:*.rpm=33:*.jar=33:*.rar=33:*.jpg=32:*.jpeg=32:*.gif=32:*.bmp=32:*.pbm=32:*.pgm=32:*.ppm=32:*.tga=32:*.xbm=32:*.xpm=32:*.tif=32:*.tiff=32:*.png=32:*.mov=34:*.mpg=34:*.mpeg=34:*.avi=34:*.fli=34:*.flv=34:*.3gp=34:*.mp4=34:*.divx=34:*.gl=32:*.dl=32:*.xcf=32:*.xwd=32:*.flac=35:*.mp3=35:*.mpc=35:*.ogg=35:*.wav=35:*.m3u=35:'; 
zstyle ':completion:*' menu select

eval `dircolors`
zstyle ':completion:*:default' list-colors "${(s.:.)LS_COLORS}"

alias grep='grep --color=auto'
alias ls='ls -F --color=auto'
alias vimza="vim ~/.zshrc"

alias -s {pdf,djv{,u}}=evince
alias -s {avi,mpeg,mpg,mov,m2v,flv,mkv}=mplayer
alias -s py=python
alias -s {ogg,mp3,wav,wma}=mplayer
alias -s {tex,cpp,c}=vim
# Highlight errors
alias -g  HE='2>>( sed -ue "s/.*/$fg_bold[red]&$reset_color/" 1>&2 )'

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
