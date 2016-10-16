#!/bin/bash

#TODO: Remove hardcoded string
DOTFILES_ROOT=${HOME}/dotfiles

apps_common=($(find ${DOTFILES_ROOT}/common/ -maxdepth 2 -name 'install.sh' -print))
apps_host=($(find ${DOTFILES_ROOT}/host-dependent/$(hostname)/ -maxdepth 2 -name 'install.sh' -print))
apps_project=($(find ${DOTFILES_ROOT}/project-dependent/ -maxdepth 3 -name 'install.sh' -print))

#
# Read additional source files
#
function dotfiles_source
{
    if [ ! -z "$apps_common" ]; then 
        for app_common in ${apps_common[@]}; do
            echo "Reading common: ${app_common}"
            source $app_common
        done
    fi

    if [ ! -z "$apps_host" ]; then
        for app_host in ${apps_host[@]}; do
            echo "Reading host: ${app_host}"
            source $app_host
        done
    fi

    if [ ! -z "$apps_project" ]; then
        for app_project in ${apps_project[@]}; do
            echo "Reading project: ${app_project}"
            source $app_project
        done
    fi
}; dotfiles_source


#
# Install dotfiles in $HOME directory
#
# - Remove existing app directories (.vim, .git, etc)
# - Remove existing app config files (.vimrc, .bashrc, etc)
# - Symlink dotfile app directories and files to global one (~/dotfiles/*/vimrc -> ~/.vimrc)
# - Run additional one-time configuration routines (git config --global user.name "...")
# 
function dotfiles_install 
{
    if [ ! -z "$apps_common" ]; then 
        for app_common in ${apps_common[@]}; do
            echo "Install: dotfiles_install_common_$(basename $(dirname $app_common))"
            dotfiles_install_common_$(basename $(dirname $app_common))
        done
    fi
    
    if [ ! -z "$apps_host" ]; then
        for app_host in ${apps_host[@]}; do
            echo "Install: dotfiles_install_host_$(basename $(dirname $app_host))"
            dotfiles_install_host_$(basename $(dirname $app_host))
        done
    fi
}; dotfiles_install

