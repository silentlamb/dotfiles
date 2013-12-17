#!/bin/bash

#TODO: Remove hardcoded string
DOTFILES_ROOT=$HOME/new-dotfiles

apps_common=($(find $DOTFILES_ROOT/common/* -maxdepth 1 -name 'install.sh' -print))
apps_host=($(find $DOTFILES_ROOT/host-dependent/$(hostname)/* -maxdepth 1 -name 'install.sh' -print))
apps_project=($(find $DOTFILES_ROOT/project-dependent/ -maxdepth 3 -name 'install.sh' -print))

#
# Read additional source files
#
function dotfiles_source
{
    for app_common in ${apps_common[@]}; do
        source $app_common
    done

    for app_host in ${apps_host[@]}; do
        source $app_host
    done

    for app_project in ${apps_project[@]}; do
        source $app_project
    done
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
    for app_common in ${apps_common[@]}; do
        dotfiles_install_common_$(basename $(dirname $app_common))
    done
    
    for app_host in ${apps_host[@]}; do
        dotfiles_install_$(hostname)_$(basename $(dirname $app_host))
    done
}

