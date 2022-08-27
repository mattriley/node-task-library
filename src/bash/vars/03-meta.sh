#!/bin/bash


function STAGE {
    echo "local"
}

function PACKAGE_NAME {
    echo "$(package name)"
}

function DISPLAY_NAME {
    exec_node_script "start-case.js" "$PACKAGE_NAME"
}

function NODE_MODULES_LINKS {
    echo "$PACKAGE_ROOT/node_modules_links"
}

function PRINT_VARS {
    echo "ROOT | DISPLAY_NAME | PACKAGE_NAME | STAGE | PORT"
}

function DEV_LINKS {
    echo "module-composer | module-indexgen | task-library"
}

function DEV_TASKS {
    echo "edit | test-watch | start | barrel-gen-watch"
}

function TASK_PATHS {
    echo "$TASKS | $TASK_LIBRARY_ROOT/src/bash/tasks"
}

function COPY_MODULES {
    echo ""
}
