### If not running interactively, don't do anything
[ -z "$PS1" ] && return

### Common functions
source ~/dotfiles/bash-functions.sh

HISTCONTROL=ignoredups:ignorespace
HISTSIZE=10000
HISTFILESIZE=20000

shopt -s histappend
shopt -s checkwinsize

### make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

### By default colors are added
if [ -n "${COLOR_PROMPT}" ]; then
    COLOR_PROMPT=yes
fi

### Colored prompt
PROMPT_COMMAND=bash_prompt

### Enable programmable completion features 
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

### Other variables
export SAMSUNG_APPS=true

### Add arm-* command aliasses from toolchains
source ~/dotfiles/bash-paths.sh

### Common alias definitions.
if [ -f ~/dotfiles/bash-aliases.sh ]; then
    source ~/dotfiles/bash-aliases.sh
fi

## Load files dedicated only to this host
for file in $(ls ~/dotfiles/${HOSTNAME}/); do
    # echo "Loading ${HOSTNAME}/${file}"
    source ~/dotfiles/${HOSTNAME}/${file}
done

## Load all files from the common directory
for file in $(find ~/dotfiles/bash-common -name "en-*.sh" ); do
    source $file
done

