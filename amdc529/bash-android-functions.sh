#!/bin/bash

# Load nonpublic functions and variables
source ~/dotfiles/amdc529/samsung-bash-functions.sh

droid-help ()
{
cat << EOF
      \`\,.---.,/'
       .'     \`.           List of functions
      /  o   o  \\
  __ :___________: __      See source file for usage help
 :  :|"""""""""""|:  :
 |  ||           ||  |       * - not implemented yet
 |  ||           ||  |
 :  :|           |:  :
  "" |           | ""
     \`-.  .-.  .-'                Author:   Marcin Glinski
       |  | |  |                  Modified: 2013-01-21
       :  : :  :
       \`--' \`--'
EOF
# Privates
    samsung-droid-help
    echo
}


# List apks on the device
#
#   Usage:
#   -w    wait for device (default)
#   -W    don't wait for device
#   -s    print system apks instead of user
#   -n    number of most recent apks to be printed
#
droid-list-apks () {
    local OPTIND
    local OPTARG
    local OPTERR

    local wait_for_device="wait-for-device"
    local path="/data/app"
    local system=false
    local limit=""

    while getopts "wWsn:" flag; do
        case $flag in
            n) limit="-n ${OPTARG}" ;;
            w) wait_for_device="wait-for-device" ;;
            W) wait_for_device="" ;;
            s) path="/system/app"; system=true ;;
            ?) ;;
        esac
    done

    echo "==== ${path} ===="
    if [ -z "$limit" ]; then
        adb $wait_for_device shell ls -l $path | cut -c39- | sort
    else
        adb $wait_for_device shell ls -l $path | cut -c39- | sort | tail $limit
    fi

}


