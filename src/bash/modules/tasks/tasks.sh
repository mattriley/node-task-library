#!/bin/bash

function tasks.tasks {

    local task_paths; task_paths=("$TASKS" "$TASK_LIBRARY_ROOT/src/bash/modules/tasks")

    ui.newline

    for task_path in "${task_paths[@]}"; do 
        ui.info "${BOLD}Tasks at $task_path${NORM}"
        for task_file in "$task_path"/*; do 
            local task_name; task_name=$(basename "$task_file" ".sh")
            ui.info "$task_name"
        done
        ui.newline
    done


}