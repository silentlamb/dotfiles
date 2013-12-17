dotfiles
========

Set of .files to share between various workstations.

## Structure

Common directory is a main part of this repository. This is a place for dotfiles to be shared between workstations. It should contain separate folder for every application (or any logical unit), and inside this folder there should be a file named install.sh. This file should have bash function with the name: dotfiles_install_common_nameoffolder and it should create symlinks, copy files and do other actions in order to make app config work on current machine.

### Bash

Bash common folder contains several files, which are automatically source'd by .bashrc.

| File         | Purpose                                                         |
| ------------ | --------------------------------------------------------------- |
| bash-rc.sh   | Main file. Target for ~/.bashrc link. It relegates work to other .sh files |
| functions.sh | Place for tools too small to be separate script but too big to be an alias |
| mappings.sh  | Place for aliases. Adding default parameters to common commands, creating small, useful one-liners. |
| paths.sh     | Paths to be added to PATH env. |
| settings.sh  | Various bash settings. |
| virtualenvwrapper.sh | Configure virtualenvwrapper to manage python environments much easier. |

Main file also reads bash-rc.sh files from other locations:
- host-dependent/name-of-host/bash-rc.sh
- project-dependent/name-of-project-1/bash-rc.sh
- project-dependent/name-of-project-2/bash-rc.sh
- project-dependent/.../bash-rc.sh

Directory *host-dependent/* is marked to be ignored by default, so nothing will be pushed to the github repository unless gitignore exception is made. Configs in this directory should contain settings dependent on a host, like paths to various tools or places.

Directory *project-dependent/* has been created mostly for bash functions, aliases and scripts. Nothing from here will be pushed to github repo by default unless gitignore exception is made. Aliases and functions should be grouped by common prefix, different for every project.

### Vim plugins
- pathogen
- powerline-vim

## External tools

Several external tools are used by this dotfiles repo:
- powerline-tmux
- powerline-shell (forked to change few things)
