#!/bin/bash

function tasks.jest_cov {

    set -e

    lib.run_task jest-test --coverage "$@"

}
