#!/bin/bash

function util.ask_ok {

    util.newline
    echo -n "👀 OK? "
    choice="$OK"

    [ -z "$choice" ] && read -r choice || util.info "$choice"

    case "$choice" in 
        y|Y ) util.newline;;
        n|N ) util.warn "Aborting..."; util.newline; return 1;;
        * ) util.warn "Invalid input. Aborting..."; util.newline; return 1;;
    esac
    
}
