#!/bin/bash

function reporter.ask_ok {

    reporter.newline
    echo -n "👀 OK? "
    choice="$OK"

    if [ -z "$choice" ]; then
        read -r choice
    else
        reporter.info "$choice"
    fi

    case "$choice" in 
        y|Y ) reporter.newline;;
        n|N ) reporter.warn "Aborting..."; reporter.newline; return 1;;
        * ) reporter.warn "Invalid input. Aborting..."; reporter.newline; return 1;;
    esac

}
