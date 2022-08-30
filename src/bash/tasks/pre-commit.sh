#!/bin/bash

function pre_commit {

    set -e

    run_task config-gen
    run_task code-gen
    run_task lint --fix
    run_task cov
    run_task sloc
    run_task metrics-summary
    run_task readme-gen

    git add .

}
