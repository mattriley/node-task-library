#!/bin/bash

function tasks.dist_static {

    [ ! -d "$STATIC" ] && reporter.task_warn "$STATIC not found" && return

    cp -a "$STATIC/" "$DIST"

}
