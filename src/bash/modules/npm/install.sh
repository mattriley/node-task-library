#!/bin/bash
# shellcheck disable=SC2086

function npm.install {

    local args="$1"
    [ "$args" ] && local message=" ${BOLD}$args${NORM}"
    ui.print "Installing$message... "
    
    if local output; output="$(npm i $args 2>&1)"; then
        ui.info "done"
    else
        ui.info "done with errors"
        ui.info "$output"
    fi

}
