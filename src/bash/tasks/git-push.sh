#!/bin/bash

function tasks.git_push {

    task_runner.run_task git-commit "$@" && \
    git push

}
