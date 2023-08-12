#!/bin/bash

function tasks.dist {

    fs.re_mkdir "$DIST" && \
    task_runner.run_tasks "dist-static $(infer.dist)" "$@" && \
    { { bool.true "$DIST_FLATTEN" && fs.flatten_dir "$DIST"; } || true; }

}
