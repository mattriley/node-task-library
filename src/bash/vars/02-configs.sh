#!/bin/bash

function PACKAGE_JSON {
    echo "$PACKAGE_ROOT/package.json"
}

function GIT_IGNORE {
    echo "$PACKAGE_ROOT/.gitignore"
}

function BABEL_CONFIG {
    echo "$PACKAGE_ROOT/babel.config.js"
}

function JEST_CONFIG {
    echo "$PACKAGE_ROOT/jest.config.json"
}

function SERVERLESS_CONFIG {
    echo "$PACKAGE_ROOT/serverless.yml"
}

function ITERMOCIL_CONFIG {
    echo "$PACKAGE_ROOT/itermocil.yml"
}

function ITERMOCIL_LAYOUT {
    echo "main-vertical"
}
