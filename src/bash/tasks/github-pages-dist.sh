#!/bin/bash

function tasks.github_pages_dist {

    set -e

    lib.run_task dist

    [ -n "$GITHUB_PAGES_CNAME" ] && echo "$GITHUB_PAGES_CNAME" > "$DIST/CNAME"

    util.fs.remkdir "$GITHUB_PAGES_PATH"

    cp -a "$DIST/" "$GITHUB_PAGES_PATH"

}
