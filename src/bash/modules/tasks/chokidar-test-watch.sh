#!/bin/bash
# shellcheck disable=SC2086

function tasks.chokidar_test_watch {

    ui.newline && \
    chokidar $TEST_WATCH_PATHS -c "$TASK_LIBRARY_ROOT/bin/task test"

}
