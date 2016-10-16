EDITOR=/usr/bin/vim
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=10000
HISTFILESIZE=20000

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

# Less/Most
MANPATH=/usr/local/man:/usr/local/share/man:/usr/share/man:/usr/man
# Colors
default=$(tput sgr0)
red=$(tput setaf 1)
green=$(tput setaf 2)
purple=$(tput setaf 5)
orange=$(tput setaf 9)

# Less colors for man pages
export PAGER=less
export LESS="--RAW-CONTROL-CHARS"
# export LESS_TERMCAP_mb=$'\E[01;31m'      # begin blinking
# export LESS_TERMCAP_md=$'\E[01;31m'      # begin bold
# export LESS_TERMCAP_me=$'\E[0m'          # end mode
# export LESS_TERMCAP_se=$'\E[0m'          # end standout-mode                 
# export LESS_TERMCAP_so=$'\E[01;44;33m'   # begin standout-mode - info box                              
# export LESS_TERMCAP_ue=$'\E[0m'          # end underline
# export LESS_TERMCAP_us=$'\E[01;32m'      # begin underline

# export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode
# export LESS_TERMCAP_md=$(printf '\e[01;38;5;75m') # enter double-bright mode
# export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
# export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode
# export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode
# export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
# export LESS_TERMCAP_us=$(printf '\e[04;38;5;200m') # enter underline mode

# export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode – red
# export LESS_TERMCAP_md=$(printf '\e[01;35m') # enter double-bright mode – bold, magenta
# export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
# export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode
# export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode – yellow
# export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
# export LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode – cyan 

# export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
# export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
# export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
# export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline
# export LESS_TERMCAP_me=$'\E[0m'           # end mode
# export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
# export LESS_TERMCAP_ue=$'\E[0m'           # end underline

