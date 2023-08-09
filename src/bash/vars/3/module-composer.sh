#!/bin/bash

function MODULES {
    echo "$SRC/modules"
}

function COMPOSE_FILE {
    find "$SRC" -name "compose.*js" -print -quit
}

function MODULE_COMPOSER_DETECTED {
    fs.dir_exists "$MODULES" && echo "true" || echo "false"
}

function MODULE_COMPOSER_DETECTED {
    npm.has_dependency "module-composer" && echo "true" || echo "false"
}
