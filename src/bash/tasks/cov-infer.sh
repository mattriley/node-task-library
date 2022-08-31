#!/bin/bash

function tasks.cov_infer {

    set -e

    lib.run_tasks "$(lib.infer_test_task "cov" "$DEFAULT_COV_TASK")"

}
