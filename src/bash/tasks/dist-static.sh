#!/bin/bash

function dist_static {

    set -e

    [ ! -d "$STATIC" ] && warn "$STATIC not found" && exit

    cp -a "$STATIC/" "$DIST"

}
