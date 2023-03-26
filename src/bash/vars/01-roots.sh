#!/bin/bash

function NODE_VERSION {
    npx n --latest
}

function NODENV_VERSION {
    echo "$NODE_VERSION"
}

function ROOT {
    echo "." # Try to avoid $(pwd) for easier visual scanning
}

function PACKAGE_ROOT {
    echo "." # Not $ROOT; Use case: catering-website
}

function PACKAGE_DEPENDENCIES_ROOT {
    echo "$PACKAGE_ROOT"
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

function COMPOSE {
    find "$SRC" -name "compose.*js" -print -quit
}
