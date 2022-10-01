#!/bin/bash

function tasks.test {

    fs.is_dir_empty "$TESTS" && reporter.task_warn "No tests found" && return

    lib.run_tasks "$(infer.test)" "$@"

}
