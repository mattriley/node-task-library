#!/bin/bash

function PACKAGE_CONFIG {
    echo "$PACKAGE_ROOT/package.json"
}

function PACKAGE_CONFIG_DETECTED {
    fs.file_exists "$PACKAGE_CONFIG"
    bool.from_exit_status $?
}

function PACKAGE_NAME {
    npm.package "name"
}

function NPM_BUMP_VERSION {
    echo "minor"
}
