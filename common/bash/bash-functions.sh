#!/bin/bash

### Add git branch to prompt when inside repository
###
### GIT_HIDE_BRANCH=1       do not display name of branch
function prompt_git {
    local Y="\[\033[0;33m\]"
    local EMY="\[\033[1;33m\]"
    local M="\[\033[0;35m\]"
    local EMM="\[\033[1;35m\]"
    local NONE="\[\033[0m\]"    # unsets color to term's fg color
    local PREFIX=$1             # $1 is prefix, probably space char

    if [ -n "${GIT_HIDE_BRANCH}" ]; then
        return
    fi

    # Display ಠ_ಠ when inside .git 
    if [[ "$PWD" == *.git* ]]; then
        echo "${PREFIX}${EMY}ಠ_ಠ${NONE} "
        return
    fi 

    ref=$(git symbolic-ref -q HEAD 2> /dev/null) || return
    
    if [ -z "$(git status --porcelain 2> /dev/null)" ]; then
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
    local G="\[\033[0;32m\]"    # green
    local EMR="\[\033[1;31m\]"  # red
    
    local VIRTUALENV_PS1=

    if [ -n "$VIRTUAL_ENV" ]; then
        VIRTUALENV_PS1="$(basename $VIRTUAL_ENV)"
    fi

    local UC=$G                 # user's color
    [ $UID -eq "0" ] && UC=$EMR # root's color
    
    local ps1_env=$(prompt_virtualenv)
    local ps1_git=
    #if [ -z "$ps1_env" ]; then
    #    ps1_git=$(prompt_git " ")
    #else
    ps1_git=$(prompt_git)
    #fi
    PS1="\n${ps1_env}${UC}\w${NONE}:\n ${ps1_git}\\$ "
}

