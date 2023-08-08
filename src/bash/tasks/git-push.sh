#!/bin/bash

function tasks.git_push {

    tasks.run_task git-commit "$@" && \
    git push

}
