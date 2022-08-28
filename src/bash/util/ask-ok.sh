#!/bin/bash

function ask_ok {

    echo
    echo -n "👀 OK? "
    choice="$OK"

    [ -z "$choice" ] && read choice || echo "$choice"

    case "$choice" in 
        y|Y ) echo;;
        n|N ) echo "Aborting..."; echo; exit 1;;
        * ) echo "Invalid input. Aborting..."; echo; exit 1;;
    esac
}
