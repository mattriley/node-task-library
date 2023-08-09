#!/bin/bash

function tasks.dist_static.precondition {

    fs.dir_absent "$WEB_STATIC" && echo "$WEB_STATIC not found"

}

function tasks.dist_static {

    cp -a "$WEB_STATIC/" "$DIST"

}
