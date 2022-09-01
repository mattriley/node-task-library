#!/bin/bash

function tasks.cov_report_infer {

    set -e

    lib.run_tasks "$(lib.infer_test_task "cov-report" "$DEFAULT_COV_REPORT_TASK")"

}
