#!/bin/bash

function tasks.npm_latest {

    local args; args=${1:-"-u"}
    local package_json_before; package_json_before=$(<"$PACKAGE_JSON")

    reporter.newline && \
    ncu "$args" && \
    reporter.newline

    local package_json_after; package_json_after=$(<"$PACKAGE_JSON")
    [ "$package_json_after" = "$package_json_before" ] && return

    npm.install && \
    reporter.newline

    # npm.install "-D task-library" && \

}
