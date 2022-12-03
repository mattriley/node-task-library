#!/bin/bash

function tasks.npm_latest {

    local package_json_before; package_json_before=$(<"$PACKAGE_JSON")

    reporter.newline && \
    ncu -u && \
    reporter.newline

    local package_json_after; package_json_after=$(<"$PACKAGE_JSON")
    [ "$package_json_after" = "$package_json_before" ] && return

    npm.install && \
    reporter.newline

}
