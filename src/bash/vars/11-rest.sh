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

function DATA {
    echo "$PACKAGE_ROOT/data"
}

function NPM_BUMP_VERSION {
    echo "minor"
}
