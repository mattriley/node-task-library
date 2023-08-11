#!/bin/bash

function tasks.cov_report.infer {

    infer.cov_report

}

function tasks.cov_report {

    task_runner.run_tasks "$(tasks.cov_report.infer)" "$@"

}
