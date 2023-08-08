#!/bin/bash

function tasks.cov.infer {

    infer.cov

}

function tasks.cov.precondition {

    [ ! -d "$TESTS" ] && echo "$TESTS not found"

}

function tasks.cov {

    tasks.run_tasks "$(tasks.cov.infer)" "$@"

}
