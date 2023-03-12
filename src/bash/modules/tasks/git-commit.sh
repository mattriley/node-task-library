#!/bin/bash

function tasks.git_commit {

    local commit_message=${1:-"Unspecified changes"}
    local commit_args="-m "$commit_message" ${*:2}"

    reporter.newline && \
    git add . && \
    git commit "$commit_args" && \
    reporter.newline

}
