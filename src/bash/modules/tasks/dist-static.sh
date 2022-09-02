#!/bin/bash

function tasks.dist_static {

    

    [ ! -d "$STATIC" ] && util.warn "$STATIC not found" && return

    cp -a "$STATIC/" "$DIST"

}
