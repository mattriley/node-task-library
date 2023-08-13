#!/bin/bash

function tasks.git_push {

    core.tasks.run_task git-commit "$@" && \
    git push

}
