#!/bin/bash

function tasks.doctoc {

    [ ! -f "$README" ] && reporter.task_warn "$README not found" && return

    doctoc --title "## Table of Contents" --maxlevel 2 "$README" > /dev/null && \
    git add "$README"

}
