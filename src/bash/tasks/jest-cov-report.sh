#!/bin/bash

function tasks.jest_cov_report {

    core.run_task "jest-test" --coverage --coverageThreshold '{}' "$@"

}
