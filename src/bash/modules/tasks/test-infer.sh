#!/bin/bash

function tasks.test_infer {

    set -e

    lib.infer_and_run_test_tasks "" "$DEFAULT_TEST_TASK"

}
