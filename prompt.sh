if [ $UID -eq 0 ]; then
        PS1='\[\033[0;31m\]\u\[\033[0;31m\]@\[\033[1;31m\]\H\[\033[0;33m\] \w \[\033[1m\]\$\[\033[0m\] '
else
        PS1='\[\033[0;32m\]\u\[\033[0;32m\]@\[\033[1;32m\]\H\[\033[0;33m\] \w \[\033[1m\]\$\[\033[0m\] '
fi

alias ll="ls -la --color=always"
alias less="less -r"

export HISTFILESIZE=100000
export HISTSIZE=100000
export HISTTIMEFORMAT="%F %H:%M:%S "
