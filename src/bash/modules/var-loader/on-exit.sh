#!/bin/bash

function var_loader.on_exit {
    
    local exit_code="$?"
    local failure="${RED}FAILURE${NORM}"
    local success="${GREEN}SUCCESS${NORM}"

    reporter.newline
    [ "$exit_code" -gt 0 ] && echo "$failure" && exit 1
    [ "$IS_SUBTASK" ] && return
    echo "$success"

}
