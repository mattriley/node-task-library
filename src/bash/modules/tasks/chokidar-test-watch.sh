#!/bin/bash

function tasks.chokidar_test_watch {

    ui.newline

    # shellcheck disable=SC2086
    chokidar $TEST_WATCH_PATHS -c "$TASK_LIBRARY_ROOT/bin/task test"

}
