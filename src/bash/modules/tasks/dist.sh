#!/bin/bash

function tasks.dist {

    fs.re_mkdir "$DIST" && \
    lib.run_task dist-static && \
    lib.run_tasks "$(infer.dist)" && \
    ( [ "$DIST_FLATTEN" = "true" ] && fs.flatten_dir "$DIST" )

}
