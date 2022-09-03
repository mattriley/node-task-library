#!/bin/bash
# shellcheck disable=SC2086

function npm.install {

    local packages="$1"
    local options="$2"
    [ "$packages" ] && local message=" ${BOLD}$packages${NORM}"
    ui.print "Installing$message... "
    
    if local output; output="$(npm i $options $packages 2>&1)"; then
        ui.info "done"
    else
        ui.info "done with errors"
        ui.info "$output"
    fi

}
