#!/bin/bash
# shellcheck disable=SC2086

function npm.install {

    local packages="$1"
    local options="$2"
    [ "$packages" ] && local message=" ${BOLD}$packages${NORM}"
    ui.info "Installing$message..."
    
    local output; output="$(npm i $options $packages 2>&1)" 
    [ "$?" ] && ui.info "Installation completed" && return 0
    ui.info "Installation completed with errors"
    ui.info "$output"

}
