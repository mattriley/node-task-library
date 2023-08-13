#!/bin/bash
# shellcheck disable=2086

function npm.install {

    local args="$1"
    [ -z "$args" ] && return 0

    local message=" ${BOLD}$args${NORM}"
    reporter.print "Installing$message... "
    
    if local output; output="$(npm i $args 2>&1)"; then
        reporter.info "done"
    else
        reporter.info "done with errors"
        reporter.info "$output"
    fi

}
