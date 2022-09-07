#!/bin/bash

function ROOT {
    echo "."
}

function PACKAGE_ROOT {
    echo "."
}

function GIT_ROOT {
    echo "$PACKAGE_ROOT"
}

function OUTPUT_ROOT {
    echo "$PACKAGE_ROOT"
}

function TASKS {
    echo "$PACKAGE_ROOT/tasks"
}

function NODE_MODULES {
    echo "$PACKAGE_ROOT/node_modules"
}

function DATA {
    echo "$PACKAGE_ROOT/data"
}

function SRC {
    echo "$PACKAGE_ROOT/src"
}

function MODULES {
    echo "$SRC/modules"
}
