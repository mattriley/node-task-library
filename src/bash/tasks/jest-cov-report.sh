#!/bin/bash

function tasks.jest_cov_report {

    task_runner.run_task "jest-test" --coverage --coverageThreshold '{}' "$@"

}
