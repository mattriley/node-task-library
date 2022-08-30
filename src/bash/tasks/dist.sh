#!/bin/bash

function dist {

    set -e

    fs.remkdir "$DIST"

    run_task dist-static
    run_task dist-infer

    if [ "$DIST_FLATTEN" = "true" ]; then
        fs.flatten "$DIST"
    fi

}
