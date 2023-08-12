#!/bin/bash

function GIT_ROOT {
    echo "$PACKAGE_ROOT"
}

function GIT_IGNORE {
    echo "$GIT_ROOT/.gitignore"
}

function GIT_DETECTED {
    fs.dir_exists "$GIT_ROOT/.git"
    bool.from_exit_status $?
}

function GIT_CURRENT_BRANCH {
    git branch --show-current
}
