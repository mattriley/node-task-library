#!/bin/bash

function tasks.doctoc {
  
    

    [ ! -f "$README" ] && util.warn "$README not found" && return

    doctoc --title "## Table of Contents" --maxlevel 2 "$README" > /dev/null

    git add "$README"

}
