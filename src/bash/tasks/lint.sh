#!/bin/bash

function tasks.lint.infer {

    infer.lint

}

function tasks.lint {

    task_runner.run_tasks "$(tasks.lint.infer)" "$@"

}
