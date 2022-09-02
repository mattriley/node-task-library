#!/bin/bash

function tasks.cov_report_infer {

    lib.infer_and_run_test_tasks "cov-report" "$DEFAULT_COV_REPORT_TASK"

}
