#!/bin/bash

function tasks.doctoc.precondition {

    fs.file_absent "$README" && echo "$README not found"

}

function tasks.doctoc {

    doctoc --title "## Table of Contents" --maxlevel "$README_TOC_MAX_LEVEL" "$README" > /dev/null && \
    git add "$README"

}
