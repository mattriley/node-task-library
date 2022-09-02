#!/bin/bash

function tasks.test_watch_infer {

    lib.infer_and_run_test_tasks "test-watch" "$DEFAULT_TEST_WATCH_TASK"

}
