#!/bin/bash

function tasks.nodemon {

    [ ! -f "$SERVER" ] && "$SERVER not found" && return

    nodemon "$SERVER" "$@"

}
