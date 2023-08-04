#!/bin/bash

function tasks.chokidar_test_watch.precondition {

    [ -z "$TEST_WATCH_PATHS" ] && echo "no watch paths exist"

}

function tasks.chokidar_test_watch {

    # shellcheck disable=2086
    reporter.newline && \
    chokidar $TEST_WATCH_PATHS -c "$TASK_LIBRARY_ROOT/bin/task test"

}
