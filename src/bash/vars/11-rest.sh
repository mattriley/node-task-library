#!/bin/bash

function GIT_BRANCH {
    git branch --show-current
}

function SOURCE_CODE_URL {
    echo "$GITHUB_REPO_URL"
}

function ISSUES_URL {
    echo "$GITHUB_ISSUES_URL"
}

function ISSUES_EMAIL {
    echo "$AUTHOR_EMAIL"
}

function BARREL_PATHS {
    echo "$TEST_WATCH_PATHS"
}

function NPM_BUMP_VERSION {
    echo "minor"
}
