#!/bin/bash

function tasks.dist {

    set -e

    fs.remkdir "$DIST"

    lib.run_task dist-static
    lib.run_task dist-infer

    if [ "$DIST_FLATTEN" = "true" ]; then
        fs.flatten "$DIST"
    fi

}
