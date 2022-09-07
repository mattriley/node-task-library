#!/bin/bash

function tasks.dist {

    fs.re_mkdir "$DIST" && \
    lib.run_tasks "dist-static $(infer.dist)" "$@" && \
    ( [ "$DIST_FLATTEN" = "true" ] && fs.flatten_dir "$DIST" )

}
