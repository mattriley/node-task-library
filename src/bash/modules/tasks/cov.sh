#!/bin/bash

function tasks.cov.infer {

    infer.cov

}

function tasks.cov {

    lib.run_tasks "$(tasks.cov.infer)" "$@"

}
