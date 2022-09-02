#!/bin/bash

function tasks.jest_cov_report {

    lib.run_task jest-test --coverage --coverageThreshold '{}' "$@"

}
