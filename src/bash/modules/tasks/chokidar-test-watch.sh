#!/bin/bash
# shellcheck disable=SC2086

function tasks.chokidar_test_watch {

    [ -z "$TEST_WATCH_PATHS" ] && ui.task_warn "No watch paths exist" && return

    ui.newline && \
    chokidar $TEST_WATCH_PATHS -c "$TASK_LIBRARY_ROOT/bin/task test"

}
