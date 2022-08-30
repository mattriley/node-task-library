#!/bin/bash

function jest_cov {

    set -e

    run_task jest-test --coverage "$@"

}
