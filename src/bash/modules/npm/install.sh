#!/bin/bash
# shellcheck disable=SC2086

function npm.install {

    local packages="$1"
    local options="$2"
    [ "$packages" ] && local message=" ${BOLD}$packages${NORM}"
    echo -n "Installing$message..."
    
    local output; output="$(npm i $options $packages 2>&1)" 
    [ $? ] && util.info " done" && return 0
    util.info " done with errors"
    util.info "$output"

}
