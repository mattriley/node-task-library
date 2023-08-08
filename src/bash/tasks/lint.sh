#!/bin/bash

function tasks.lint.infer {

    infer.lint

}

function tasks.lint {

    tasks.run_tasks "$(tasks.lint.infer)" "$@"

}
