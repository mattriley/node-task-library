#!/bin/bash
  
set -e

[ ! -f "$README" ] && warn "$README not found" && exit 0

npx doctoc --title "## Table of Contents" --maxlevel 2 "$README" > /dev/null

git add "$README"
