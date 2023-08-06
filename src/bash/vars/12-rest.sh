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
    list.filter "$MODULES | $TESTING_MODULES" fs.dir_exists
    # avoid $SRC $TESTING $TESTS
}

function NPM_BUMP_VERSION {
    echo "minor"
}

function MODULE_COMPOSER_ENABLED {
    npm.has_dependency "module-composer" && echo "true" || echo "false"
}


