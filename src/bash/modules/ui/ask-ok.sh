#!/bin/bash

function ui.ask_ok {

    ui.newline
    echo -n "👀 OK? "
    choice="$OK"

    [ -z "$choice" ] && read -r choice || ui.info "$choice"

    case "$choice" in 
        y|Y ) ui.newline;;
        n|N ) ui.warn "Aborting..."; ui.newline; return 1;;
        * ) ui.warn "Invalid input. Aborting..."; ui.newline; return 1;;
    esac
    
}
