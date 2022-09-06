#!/bin/bash

function tasks.readme_gen {

    [ ! -f "$README_TEMPLATE" ] && ui.task_warn "$README_TEMPLATE not found" && return

    node.exec_script "$README_GEN" > "$README" && \
    lib.run_task "doctoc" && \
    git add "$README"

}
