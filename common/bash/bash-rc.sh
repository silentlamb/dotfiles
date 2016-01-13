### If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Hostname and project related settings are loaded before commons,
# because common scripts might use some host-dependent variables 
# Example: Path to virtualenv home


# Host related settings
if [ -f ~/dotfiles/host-dependent/$(hostname)/bash/bash-rc.sh ]; then
    source ~/dotfiles/host-dependent/$(hostname)/bash/bash-rc.sh
fi

if [ -d ~/dotfiles/project-dependent ]; then
    # Project related settings
    for project in $(find ~/dotfiles/project-dependent -maxdepth 1 -mindepth 1 -type d 2>/dev/null); do
	    [ -e ${project}/bash/bash-rc.sh ] && source $project/bash/bash-rc.sh
    done
fi

# Common settings
# 	Note: functions.sh must be first!
# Core:
source ~/dotfiles/common/bash/functions.sh
source ~/dotfiles/common/bash/settings.sh
source ~/dotfiles/common/bash/paths.sh
source ~/dotfiles/common/bash/mappings.sh

# Additional:
source ~/dotfiles/common/bash/virtualenvwrapper.sh
source ~/dotfiles/common/bash/keychain.sh

