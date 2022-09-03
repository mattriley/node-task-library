#!/bin/bash

function tasks.doctoc {

    [ ! -f "$README" ] && ui.warn "$README not found" && return

    doctoc --title "## Table of Contents" --maxlevel 2 "$README" > /dev/null

    git add "$README"

}
