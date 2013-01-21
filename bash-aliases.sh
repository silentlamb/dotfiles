ALIAS_LS_OPTIONS="--group-directories-first"


### Add color to various commands
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    ALIAS_LS_OPTIONS="${ALIAS_LS_OPTIONS} --color=auto"
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias rgrep='rgrep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias igrep='grep -i --color=auto'
    alias irgrep='rgrep -i -r --color=auto'
fi

# 
alias ls="ls ${ALIAS_LS_OPTIONS}"
alias l='ls -lF --group-directories-first'
alias ll='ls -alF --group-directories-first'
alias f='find . '
alias s='git status'
alias d='git diff'
alias c='git commit'
alias push="adb -d push"
alias pull="adb -d pull"

alias hide-branch="export GIT_HIDE_BRANCH=1"
alias show-branch="unset GIT_HIDE_BRANCH"

alias http-here="python -m SimpleHTTPServer"

### Parametrized
function lapk() {           adb -d shell ls /data/app; }
function get-last-apk() {   echo $(adb shell ls -l /data/app | cut -b39- | sort -r | head -n1 | awk '{ print $3 }');   }

