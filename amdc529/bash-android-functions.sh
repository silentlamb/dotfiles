#!/bin/bash

# Load nonpublic functions and variables
source samsung-bash-functions.sh


droid-help ()
{
    echo 
    echo "            List of functions (see source file for usage help)            "
    echo "              * - not implemented yet                                     "
    echo 
    echo "=== Game backup =========================================================="
    echo " *droid-backup-game            create backup for given game from device   "
    echo " *droid-install-game           install given game to the device           "
    echo " *droid-create-config          create config for given game               "
    echo
    echo "=== Android/adb related functions ========================================"
    echo "  droid-fetch-apk              fetch apk from the device & unpack to /tmp "
    echo "  droid-list-apk               display list of apks on the device         "
    echo 
    samsung-droid-help()
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


