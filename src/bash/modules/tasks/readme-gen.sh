#!/bin/bash

function tasks.readme_gen {

    [ ! -f "$README_TEMPLATE" ] && ui.task_warn "$README_TEMPLATE not found" && return

    # node.exec_infer "$README_GEN" > "$README" && \
    # lib.run_task "doctoc" && \
    # git add "$README"

    (
        local target_dir; target_dir="$(dirname "$README_GEN")"
        local target_file; target_file="$(basename "$README_GEN")"
        cd "$target_dir" || false
        node.exec_infer "$target_file" > "$README" && \
        lib.run_task "doctoc" && \
        git add "$README"
    )

}
