#!/bin/bash

function util.ask_ok {

    echo
    echo -n "👀 OK? "
    choice="$OK"

    [ -z "$choice" ] && read -r choice || echo "$choice"

    case "$choice" in 
        y|Y ) echo;;
        n|N ) echo "Aborting..."; echo; return 1;;
        * ) echo "Invalid input. Aborting..."; echo; return 1;;
    esac
    
}
