#!/bin/bash

function tasks.dist_static {

    set -e

    [ ! -d "$STATIC" ] && lib.warn "$STATIC not found" && exit

    cp -a "$STATIC/" "$DIST"

}
