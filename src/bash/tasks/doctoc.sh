#!/bin/bash

function tasks.doctoc {
  
    set -e

    [ ! -f "$README" ] && warn "$README not found" && exit

    doctoc --title "## Table of Contents" --maxlevel 2 "$README" > /dev/null

    git add "$README"

}
