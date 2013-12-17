#
# Aliases
#

ALIAS_LS_OPTIONS="--group-directories-first  -h"
ALIAS_GREP_OPT="--color=auto -n"

# Shell
alias f='/usr/bin/find . '
alias http-here="python -m SimpleHTTPServer"
alias l='/bin/ls -lF ${ALIAS_LS_OPTIONS}'
alias ll='/bin/ls -alF ${ALIAS_LS_OPTIONS}'
alias ls='/bin/ls ${ALIAS_LS_OPTIONS}'
alias tmux="tmux -2"
alias watch="watch "

# Git
alias s='git status'
alias d='git diff'

# Add color to various commands
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    ALIAS_LS_OPTIONS="${ALIAS_LS_OPTIONS} --color=auto"
    alias dir='dir'
    alias vdir='vdir ${ALIAS_GREP_OPTS}'
    alias grep='grep ${ALIAS_GREP_OPTS}'
    alias rgrep='rgrep ${ALIAS_GREP_OPTS}'
    alias fgrep='fgrep ${ALIAS_GREP_OPTS}'
    alias egrep='egrep ${ALIAS_GREP_OPTS}'
    alias igrep='grep -i ${ALIAS_GREP_OPTS}'
    alias irgrep='rgrep -i -r ${ALIAS_GREP_OPTS}'
fi

