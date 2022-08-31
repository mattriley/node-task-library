#!/bin/bash

function tasks.nodemon {

    set -e

    [ -f "$SERVER" ] && "$SERVER not found" && exit

    nodemon "$SERVER" "$@"

}
