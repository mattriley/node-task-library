#!/bin/bash

function tasks.tasks {

    reporter.newline

    # shellcheck disable=SC2317
    function callback {
        reporter.info "${BOLD}Tasks at $1${NORM}"
        for task_file in "$1"/*; do 
            local task_name; task_name=$(basename "$task_file" ".sh")
            reporter.info "$task_name"
        done
        reporter.newline 
    }

    list.each "$TASKS | $TASK_LIBRARY_ROOT/src/bash/modules/tasks"

}
