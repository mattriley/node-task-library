#!/bin/bash

function tasks.jest_cov_report {

    set -e

    lib.run_task jest-test --coverage --coverageThreshold '{}' "$@"

}
