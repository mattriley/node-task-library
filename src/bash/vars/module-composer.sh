#!/bin/bash

function MODULE_COMPOSER_ENABLED {
    npm.has_dependency "module-composer" && echo "true" || echo "false"
}
