#!/bin/bash

function tasks.nodemon.precondition {

    fs.file_absent "$WEB_SERVER" && echo "$WEB_SERVER not found"

}


function tasks.nodemon {

    nodemon "$WEB_SERVER" "$@"

}
