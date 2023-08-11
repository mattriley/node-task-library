#!/bin/bash

function JEST_CONFIG {
    echo "$PACKAGE_ROOT/jest.config.json"
}

function JEST_DETECTED {
    node.is_module_installed "jest" || npm.has_dependency "jest" || fs.file_exists "$JEST_CONFIG"
    bool.echo $?
}
