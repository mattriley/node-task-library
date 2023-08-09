#!/bin/bash

function NODE_VERSION {
    npx n --latest
}

function NODENV_VERSION {
    echo "$NODE_VERSION"
}

function NODE_VERSION_FILE {
    echo "$PACKAGE_ROOT/.node-version"
}

function NVMRC {
    echo "$PACKAGE_ROOT/.nvmrc"
}
