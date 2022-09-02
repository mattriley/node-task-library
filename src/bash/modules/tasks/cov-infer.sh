#!/bin/bash

function tasks.cov_infer {

    set -e

    lib.infer_and_run_test_tasks "cov" "$DEFAULT_COV_TASK"

}
