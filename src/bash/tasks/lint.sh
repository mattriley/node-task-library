#!/bin/bash

function tasks.lint.infer {

    infer.lint

}

function tasks.lint {

    core.run_tasks "$(tasks.lint.infer)" "$@"

}
