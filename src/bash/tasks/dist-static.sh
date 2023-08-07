#!/bin/bash

function tasks.dist_static.precondition {

    [ ! -d "$WEB_STATIC" ] && echo "$WEB_STATIC not found"

}

function tasks.dist_static {

    cp -a "$WEB_STATIC/" "$DIST"

}
