#!/bin/bash


function COPY_MODULES {
    echo ""
}

function BARREL_PATHS {
    echo "$TEST_WATCH_PATHS"
}

function ISSUES_URL {
    echo "$GITHUB_ISSUES_URL"
}

function ISSUES_EMAIL {
    echo "$AUTHOR_EMAIL"
}

function SOURCE_CODE_URL {
    echo "$GITHUB_REPO_URL"
}

function README {
    echo "$PACKAGE_ROOT/README.md"
}

function README_TEMPLATE {
    echo "$PACKAGE_ROOT/README-TEMPLATE.md"
}

function README_TITLE {
    echo "$DISPLAY_NAME"
}

function README_BASE_URL {
    echo "$GITHUB_REPO_URL"
}

function README_GEN {
    echo "$TASK_LIBRARY_ROOT/src/node/bin/readme-gen.js"
}


function STATIC {
    echo "$PACKAGE_ROOT/static"
}

function DATA {
    echo "$PACKAGE_ROOT/data"
}

function DIST_BASE {
    echo "$OUTPUT_ROOT/dist"
}

function DIST {
    [ "$STAGE" ] && echo "$DIST_BASE-$STAGE" || echo "$DIST_BASE"
}

function DIST_FLATTEN {
    echo "false"
}

function PARCEL_OPTIONS {
    echo "$INDEX_HTML"
}

function NPM_BUMP_VERSION {
    echo "minor"
}
