#!/bin/bash

### Add git branch to prompt when inside repository
function prompt_git {
    local Y="\[\033[0;33m\]"    # Brown
    local EMY="\[\033[1;33m\]"  # Yellow
    local NONE="\[\033[0m\]"    # unsets color to term's fg color
    local PREFIX=$1             # $1 is prefix, probably space char

    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    
    if [ -z "$(git status --porcelain)" ]; then
        echo "${PREFIX}${EMY}("${ref#refs/heads/}")${NONE} "
    else
        echo "${PREFIX}${EMY}(${Y}${ref#refs/heads/}${EMY})${NONE} "
    fi
}

function prompt_virtualenv() {
    local G="\[\033[0;32m\]"    # green
    local EMG="\[\033[1;32m\]"
    local PREFIX=$1

    if [ -z "$VIRTUAL_ENV" ]; then
        return
    fi
    
    echo " ${G}(${EMG}$(basename $VIRTUAL_ENV)${G})${NONE} "
    return
}

### Set prompt
function bash_prompt() {
    local NONE="\[\033[0m\]"    # unsets color to term's fg color
    
    # regular colors
    local K="\[\033[0;30m\]"    # black
    local R="\[\033[0;31m\]"    # red
    local G="\[\033[0;32m\]"    # green
    local Y="\[\033[0;33m\]"    # yellow
    local B="\[\033[0;34m\]"    # blue
    local M="\[\033[0;35m\]"    # magenta
    local C="\[\033[0;36m\]"    # cyan
    local W="\[\033[0;37m\]"    # white
    
    # emphasized (bolded) colors
    local EMK="\[\033[1;30m\]"
    local EMR="\[\033[1;31m\]"
    local EMG="\[\033[1;32m\]"
    local EMY="\[\033[1;33m\]"
    local EMB="\[\033[1;34m\]"
    local EMM="\[\033[1;35m\]"
    local EMC="\[\033[1;36m\]"
    local EMW="\[\033[1;37m\]"
    
    # background colors
    local BGK="\[\033[40m\]"
    local BGR="\[\033[41m\]"
    local BGG="\[\033[42m\]"
    local BGY="\[\033[43m\]"
    local BGB="\[\033[44m\]"
    local BGM="\[\033[45m\]"
    local BGC="\[\033[46m\]"
    local BGW="\[\033[47m\]"

    local VIRTUALENV_PS1=

    if [ -n "$VIRTUAL_ENV" ]; then
        VIRTUALENV_PS1="$(basename $VIRTUAL_ENV)"
    fi

    local UC=$G                 # user's color
    [ $UID -eq "0" ] && UC=$EMR # root's color
    
    local ps1_env=$(prompt_virtualenv)
    local ps1_git=
    if [ -z "$ps1_env" ]; then
        ps1_git=$(prompt_git " ")
    else
        ps1_git=$(prompt_git )
    fi
    PS1="${ps1_env}${ps1_git}${UC}\w${NONE}:\\$ "
}

