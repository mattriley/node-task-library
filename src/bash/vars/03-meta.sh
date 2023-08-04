#!/bin/bash


function STAGE {
    echo "local"
}

function PACKAGE_NAME {
    npm.package "name"
}

function DISPLAY_NAME {
    node.exec_script "start-case.js" "$PACKAGE_NAME"
}

function DEFAULT_TASK {
    echo "pre-commit"
}

function PRINT_VARS {
    echo "STAGE | PORT | PACKAGE_NAME | DISPLAY_NAME"
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
