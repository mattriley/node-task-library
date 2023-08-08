#!/bin/bash

function GITHUB_USER_NAME {
    # (
        # cd "$GIT_ROOT" || exit 1
        bool.is_false "$GIT_DETECTED" && exit 1
        [[ $(git config --get remote.origin.url) =~ github\.com:(.+)\/(.+)\.git$ ]]
        echo "${BASH_REMATCH[1]}"
    # )
}

function GITHUB_REPO_NAME {
    # (
        # cd "$GIT_ROOT" || exit 1
        bool.is_false "$GIT_DETECTED" && exit 1
        [[ $(git config --get remote.origin.url) =~ github\.com:(.+)\/(.+)\.git$ ]]
        echo "${BASH_REMATCH[2]}"
    # )
}

function GITHUB_REPO_PATH {
    echo "$GITHUB_USER_NAME/$GITHUB_REPO_NAME"
}

function GITHUB_USER_URL {
    echo "https://github.com/$GITHUB_USER_NAME"
}

function GITHUB_REPO_URL {
    echo "$GITHUB_USER_URL/$GITHUB_REPO_NAME"
}

function GITHUB_ISSUES_URL {
    echo "$GITHUB_REPO_URL/issues"
}
