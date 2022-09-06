#!/bin/bash

function tasks.pre_commit {

    lib.run_tasks "config-gen | code-gen | lint | cov | sloc | metrics-summary | readme-gen"

}
