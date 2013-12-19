EDITOR=/usr/bin/vim
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=10000
HISTFILESIZE=20000
PROMPT_COMMAND=powerline_update_ps1
[ "$TERM" == "xterm" ] && export TERM=xterm-256color

shopt -s histappend
shopt -s checkwinsize

### Enable programmable completion features 
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

### From default .bashrc on Ubuntu:
### make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

