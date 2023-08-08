#!/bin/bash

function tasks.jest_cov_report {

    tasks.run_task "jest-test" --coverage --coverageThreshold '{}' "$@"

}
