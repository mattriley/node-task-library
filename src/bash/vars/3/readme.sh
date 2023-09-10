#!/bin/bash

function README {
    echo "$PACKAGE_ROOT/README.md"
}

function README_TEMPLATE {
    echo "$PACKAGE_ROOT/README-TEMPLATE.md"
}

function README_TITLE {
    echo "$DISPLAY_NAME"
}

function README_TOC_MAX_LEVEL {
    echo "2"
}

function README_BASE_URL {
    echo "$GITHUB_REPO_URL"
}

function README_GEN {
    echo "$TASK_LIBRARY_ROOT/src/node/bin/readme-gen.js"
}
