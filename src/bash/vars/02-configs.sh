#!/bin/bash

function PACKAGE_JSON {
    echo "$PACKAGE_ROOT/package.json"
}

function PACKAGE_DEPENDENCIES_JSON {
    echo "$PACKAGE_DEPENDENCIES_ROOT/package.json"
}

function GIT_IGNORE {
    echo "$PACKAGE_ROOT/.gitignore"
}

function NODE_VERSION_FILE {
    echo "$PACKAGE_ROOT/.node-version"
}

function NVMRC {
    echo "$PACKAGE_ROOT/.nvmrc"
}

function JEST_CONFIG {
    echo "$PACKAGE_ROOT/jest.config.json"
}

function ITERMOCIL_CONFIG {
    echo "$PACKAGE_ROOT/itermocil.yml"
}

function ITERMOCIL_LAYOUT {
    echo "main-vertical"
}
