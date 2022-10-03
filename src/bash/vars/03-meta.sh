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

function NODE_MODULES_LINKS {
    echo "$PACKAGE_ROOT/node_modules_links"
}

function PRINT_VARS {
    echo "STAGE | PORT | PACKAGE_NAME | DISPLAY_NAME"
}

function DEV_LINKS {
    echo "module-composer | module-indexgen | task-library"
}

function DEV_TASKS {
    echo "edit | test-watch | start | barrel-gen-watch"
}

function COPY_MODULES {
    echo ""
}
