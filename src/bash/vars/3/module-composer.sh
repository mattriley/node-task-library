#!/bin/bash

function MODULES {
    echo "$SRC/modules"
}

function COMPOSE_FILE {
    find "$SRC" -name "compose.*js" -print -quit
}

function MODULE_COMPOSER_DETECTED {
    node.module_installed "module-composer" || fs.dir_exists "$MODULES"
    bool.from_exit_status $?
}
