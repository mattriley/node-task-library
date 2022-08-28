#!/bin/bash

function npm_install {

    local packages="$1"
    local options="$2"
    [ "$packages" ] && local message=" ${BOLD}$packages${NORM}"
    echo -n "Installing$message..."
    local output
    # shellcheck disable=SC2086
    output="$(npm i $options $packages 2>&1)"
    [ $? ] && echo " done" && return 0
    echo " done with errors"
    echo "$output"

}
