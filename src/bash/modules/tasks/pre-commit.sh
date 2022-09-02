#!/bin/bash

function tasks.pre_commit {

    lib.run_task config-gen
    lib.run_task code-gen
    lib.run_task lint --fix
    lib.run_task cov
    lib.run_task sloc
    lib.run_task metrics-summary
    lib.run_task readme-gen

    git add .

}
