#!/bin/bash

function SEP {
    echo " | "
}

function IFS {
    echo "$SEP"
}

function PRINT_VARS {
    echo "ROOT | DISPLAY_NAME | PACKAGE_NAME | STAGE | PORT"
}

function STAGE {
    echo "local"
}

function VERSION_DATE {
    echo "$(date)"
}

function PACKAGE_NAME {
    echo "$(package name)"
}

function PACKAGE_DESCRIPTION {
    echo "$(package description)"
}

function DISPLAY_NAME {
    echo "$PACKAGE_NAME"
}



function TASK_PATHS {
    echo "$TASKS | $TASK_LIBRARY_ROOT/src/bash/tasks"
}



function NODE_MODULES_LINKS {
    echo "$PACKAGE_ROOT/node_modules_links"
}

function NODE_MODULES_LINK_PACKAGES {
    echo "module-composer | module-indexgen | task-library"
}



function ITERMOCIL_TASKS {
    echo "edit | test-watch | start | barrel-gen-watch"
}



function GIT_BRANCH {
    (
        cd "$GIT_ROOT"
        git branch --show-current
    )
}


