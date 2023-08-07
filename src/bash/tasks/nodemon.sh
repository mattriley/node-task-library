#!/bin/bash

function tasks.nodemon.precondition {

    [ ! -f "$SERVER" ] && echo "$SERVER not found"

}


function tasks.nodemon {

    nodemon "$SERVER" "$@"

}
