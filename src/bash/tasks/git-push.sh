#!/bin/bash

function tasks.git_push {

    core.run_task git-commit "$@" && \
    git push

}
