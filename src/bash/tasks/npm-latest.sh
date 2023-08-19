#!/bin/bash

function tasks.npm_latest {

    local package_config_before; package_config_before=$(<"$PACKAGE_CONFIG")

    reporter.newline
    ncu -u
    reporter.newline

    local package_config_after; package_config_after=$(<"$PACKAGE_CONFIG")
    [ "$package_config_after" = "$package_config_before" ] && return

    npm install
    reporter.newline

}
