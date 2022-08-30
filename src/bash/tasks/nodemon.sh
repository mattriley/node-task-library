#!/bin/bash

function nodemon {

    set -e

    [ -f "$SERVER" ] && "$SERVER not found" && exit

    nodemon "$SERVER" "$@"

}
