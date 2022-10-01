#!/bin/bash

function tasks.readme_gen {

    [ ! -f "$README_TEMPLATE" ] && reporter.task_warn "$README_TEMPLATE not found" && return

    node.exec_infer "$README_GEN" > "$README" && \
        lib.run_task "doctoc" && \
        git add "$README"

}
