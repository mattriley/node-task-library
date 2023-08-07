#!/bin/bash

function tasks.dist {

    fs.re_mkdir "$DIST" && \
    lib.run_tasks "dist-static $(infer.dist)" "$@" && \
    { { bool.is_true "$DIST_FLATTEN" && fs.flatten_dir "$DIST"; } || true; }

}
