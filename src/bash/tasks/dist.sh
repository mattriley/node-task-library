#!/bin/bash

function tasks.dist {

    fs.re_mkdir "$DIST" && \
    core.tasks.run_tasks "dist-static $(infer.dist)" "$@" && \
    { { bool.true "$DIST_FLATTEN" && fs.flatten_dir "$DIST"; } || true; }

}
