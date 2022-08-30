#!/bin/bash

function jest_cov_report {

    set -e

    run_task jest-test --coverage --coverageThreshold '{}' "$@"

}
