#!/bin/bash



function NODE_VERSION_FILE {
    echo "$PACKAGE_ROOT/.node-version"
}

function NVMRC {
    echo "$PACKAGE_ROOT/.nvmrc"
}



function ITERMOCIL_CONFIG {
    echo "$PACKAGE_ROOT/itermocil.yml"
}

function ITERMOCIL_LAYOUT {
    echo "main-vertical"
}
