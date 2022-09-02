#!/bin/bash

function tasks.nodemon {

    set -e

    [ -f "$SERVER" ] && "$SERVER not found" && return

    nodemon "$SERVER" "$@"

}
