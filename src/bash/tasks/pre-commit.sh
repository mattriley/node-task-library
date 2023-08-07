#!/bin/bash

function tasks.pre_commit.infer {

    echo "config-gen | code-gen | lint | cov | sloc | metrics-summary | readme-gen"

}

function tasks.pre_commit {

    lib.run_tasks "$(tasks.pre_commit.infer)"

}
