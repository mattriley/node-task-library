#!/bin/bash
# shellcheck disable=SC2086

function tasks.chokidar_test_watch.precondition {

    [ -z "$TEST_WATCH_PATHS" ] && echo "no watch paths exist"

}

function tasks.chokidar_test_watch {

    reporter.newline && \
    chokidar $TEST_WATCH_PATHS -c "$TASK_LIBRARY_ROOT/bin/task test"

}
