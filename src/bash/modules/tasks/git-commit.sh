#!/bin/bash

function tasks.git_commit {

    local commit_message=${1:-"Unspecified changes"}
    local commit_args="-m '$commit_message' ${*:2}"

    ui.newline && \
    git add . && \
    git commit "$commit_args" && \
    ui.newline

}
