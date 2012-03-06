### Add color to various commands
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias igrep='grep -i --color=auto'
    alias irgrep='rgrep -i -r --color=auto'
fi

# 
alias l='ls -lF'
alias ll='ls -alF'
alias f='find . '

alias push="adb -d push"
alias pull="adb -d pull"

### Parametrized
function pull-apk() {       adb -d pull /data/app/$@; }
function lapk() {           adb -d shell ls /data/app; }
function get-last-apk() {   echo $(adb shell ls -l /data/app | cut -b39- | sort -r | head -n1 | awk '{ print $3 }');   }


