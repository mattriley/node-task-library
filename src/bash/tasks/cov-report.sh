#!/bin/bash

function tasks.cov_report.infer {

    infer.cov_report

}

function tasks.cov_report {

    core.tasks.run_tasks "$(tasks.cov_report.infer)" "$@"

}
