#!/bin/bash
# shellcheck disable=SC2086

function tasks.chokidar_test_watch {

    [ -z "$TEST_WATCH_PATHS" ] && reporter.task_warn "No watch paths exist" && return

    reporter.newline && \
    chokidar $TEST_WATCH_PATHS -c "$TASK_LIBRARY_ROOT/bin/task test"

}
