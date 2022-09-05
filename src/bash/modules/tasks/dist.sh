#!/bin/bash

function tasks.dist {

    fs.re_mkdir "$DIST"

    lib.run_task dist-static
    lib.run_tasks "$(infer.dist)"

    if [ "$DIST_FLATTEN" = "true" ]; then
        fs.flatten_dir "$DIST"
    fi

}
