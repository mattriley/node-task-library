#!/bin/bash

function tasks.test_watch_infer {

    set -e

    lib.infer_and_run_test_tasks "test-watch" "$DEFAULT_TEST_WATCH_TASK"

}
