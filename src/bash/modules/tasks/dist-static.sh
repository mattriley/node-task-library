#!/bin/bash

function tasks.dist_static {

    [ ! -d "$STATIC" ] && ui.task_warn "$STATIC not found" && return

    cp -a "$STATIC/" "$DIST"

}
