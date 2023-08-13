#!/bin/bash

function tasks.jest_cov_report {

    core.tasks.run_task "jest-test" --coverage --coverageThreshold '{}' "$@"

}
