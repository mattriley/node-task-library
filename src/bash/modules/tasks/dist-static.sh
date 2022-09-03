#!/bin/bash

function tasks.dist_static {

    [ ! -d "$STATIC" ] && ui.warn "$STATIC not found" && return

    cp -a "$STATIC/" "$DIST"

}
