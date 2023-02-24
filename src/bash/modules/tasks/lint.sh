#!/bin/bash

function tasks.lint.infer {

    infer.lint

}

function tasks.lint {

    lib.run_tasks "$(tasks.lint.infer)" "$@"

}
