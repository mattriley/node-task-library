#!/bin/bash


function STAGE {
    echo "local"
}

function PROJECT_NAME {
    # shellcheck disable=2015
    bool.true "$PACKAGE_JSON_DETECTED" && echo "$PACKAGE_NAME" || basename "$PWD"
}

function DISPLAY_NAME {
    node.exec_script "start-case.js" "$PROJECT_NAME"
}

function DEFAULT_TASK {
    echo "pre-commit"
}

function PRINT_VARS {
    echo "STAGE | PORT | PROJECT_NAME | DISPLAY_NAME"
}

function SELECTED_NODE_MODULES {
    echo ""
}

function DEV_TASKS {
    echo "git-remote-status | test-watch | start | barrel-gen-watch"
}

function COPY_MODULES {
    echo ""
}
