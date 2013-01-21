#!/bin/bash

DOTFILES_PATH=${HOME}/dotfiles

function dotfiles-clean {
    # "Removing files from ${HOME} directory: "
    rm .bashrc
    rm .bash_aliases
    rm .vimrc
    rm .gitconfig
    rm .vim
}

function dotfiles-install {
    # "Creating symlinks: "
    ln -s ${DOTFILES_PATH}/bash-rc.sh .bashrc
    ln -s ${DOTFILES_PATH}/bash-aliases.sh .bash_aliases
    ln -s ${DOTFILES_PATH}/vim/vimrc .vimrc
    ln -s ${DOTFILES_PATH}/git/config .gitconfig
    ln -s ${DOTFILES_PATH}/vim .vim
}


set -x
pushd ${HOME} > /dev/null
dotfiles-clean
dotfiles-install
popd > /dev/null


