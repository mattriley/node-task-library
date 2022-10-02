#!/bin/bash

function tasks.dist_static.precondition {

    [ ! -d "$STATIC" ] && echo "$STATIC not found"

}

function tasks.dist_static {

    cp -a "$STATIC/" "$DIST"

}
