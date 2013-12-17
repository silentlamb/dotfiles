### If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Hostname and project related settings are loaded before commons,
# because common scripts might use some host-dependent variables 
# Example: Path to virtualenv home


# Host related settings
source ~/dotfiles/host-dependent/$(hostname)/bash/bash-rc.sh
# Project related settings
for project in $(find ~/dotfiles/project-dependent -maxdepth 1 -mindepth 1 -type d 2>/dev/null); do
	[ -e ${project}/bash/bash-rc.sh ] && source $project/bash/bash-rc.sh
done

# Common settings
# 	Note: functions.sh must be first!
source ~/dotfiles/common/bash/functions.sh
source ~/dotfiles/common/bash/settings.sh
source ~/dotfiles/common/bash/paths.sh
source ~/dotfiles/common/bash/mappings.sh
source ~/dotfiles/common/bash/virtualenvwrapper.sh

