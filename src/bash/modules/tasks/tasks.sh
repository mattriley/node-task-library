#!/bin/bash

function tasks.tasks {

    local task_paths; task_paths=("$TASKS" "$TASK_LIBRARY_ROOT/src/bash/modules/tasks")

    reporter.newline

    for task_path in "${task_paths[@]}"; do 
        reporter.info "${BOLD}Tasks at $task_path${NORM}"
        for task_file in "$task_path"/*; do 
            local task_name; task_name=$(basename "$task_file" ".sh")
            reporter.info "$task_name"
        done
        reporter.newline
    done


}
