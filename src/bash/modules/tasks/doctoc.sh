#!/bin/bash

function tasks.doctoc.precondition {

    [ ! -f "$README" ] && "$README not found"

}

function tasks.doctoc {

    doctoc --title "## Table of Contents" --maxlevel 2 "$README" > /dev/null && \
    git add "$README"

}
