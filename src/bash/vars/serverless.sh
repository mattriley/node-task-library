#!/bin/bash

function SERVERLESS_CONFIG {
    echo "$PACKAGE_ROOT/serverless.yml"
}

function SERVERLESS_DETECTED {
    fs.file_exists "$SERVERLESS_CONFIG" && echo "true" || echo "false"
}
