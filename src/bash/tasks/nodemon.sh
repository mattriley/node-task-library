#!/bin/bash

function tasks.nodemon.precondition {

    [ ! -f "$WEB_SERVER" ] && echo "$WEB_SERVER not found"

}


function tasks.nodemon {

    nodemon "$WEB_SERVER" "$@"

}
