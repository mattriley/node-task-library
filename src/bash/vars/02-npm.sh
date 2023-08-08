#!/bin/bash

function PACKAGE_JSON {
    echo "$PACKAGE_ROOT/package.json"
}

function PACKAGE_JSON_DETECTED {
    fs.file_exists "$PACKAGE_JSON" && echo "true" || echo "false"
}

function PACKAGE_NAME {
    npm.package "name"
}

function NPM_BUMP_VERSION {
    echo "minor"
}
