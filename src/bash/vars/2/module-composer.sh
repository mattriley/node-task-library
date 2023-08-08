#!/bin/bash

function MODULES {
    echo "$SRC/modules"
}

function COMPOSE {
    find "$SRC" -name "compose.*js" -print -quit
}

function MODULE_COMPOSER_ENABLED {
    npm.has_dependency "module-composer" && echo "true" || echo "false"
}
