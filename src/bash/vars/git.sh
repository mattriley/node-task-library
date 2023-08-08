#!/bin/bash

function GIT_DETECTED {
    fs.dir_exists ".git" && echo "true" || echo "false"
}

function GIT_CURRENT_BRANCH {
    git branch --show-current
}
