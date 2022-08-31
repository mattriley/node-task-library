#!/bin/bash

function tasks.dist_static {

    set -e

    [ ! -d "$STATIC" ] && util.warn "$STATIC not found" && exit

    cp -a "$STATIC/" "$DIST"

}
