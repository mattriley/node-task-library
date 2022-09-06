#!/bin/bash

function tasks.git_push {

    lib.run_task git-commit "$@" && \
    git push

}
