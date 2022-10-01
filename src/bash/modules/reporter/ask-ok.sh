#!/bin/bash

function reporter.ask_ok {

    reporter.newline
    echo -n "👀 OK? "
    choice="$OK"

    [ -z "$choice" ] && read -r choice || reporter.info "$choice"

    case "$choice" in 
        y|Y ) reporter.newline;;
        n|N ) reporter.warn "Aborting..."; reporter.newline; return 1;;
        * ) reporter.warn "Invalid input. Aborting..."; reporter.newline; return 1;;
    esac
    
}
