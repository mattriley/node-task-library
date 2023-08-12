#!/bin/bash

function MODULES {
    echo "$SRC/modules"
}

function COMPOSE_FILE {
    find "$SRC" -name "compose.*js" -print -quit
}

function MODULE_COMPOSER_DETECTED {
    fs.dir_exists "$MODULES"
    bool.from_exit_status $?
}

function MODULE_COMPOSER_DETECTED {
    npm.has_dependency "module-composer"
    bool.from_exit_status $?
}
