#!/bin/bash

npx task dist

[ -n "$GITHUB_PAGES_CNAME" ] && echo "$GITHUB_PAGES_CNAME" > "$DIST/CNAME"

fs.remkdir "$GITHUB_PAGES_PATH"

cp -a "$DIST/" "$GITHUB_PAGES_PATH"
