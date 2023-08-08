#!/bin/bash

function GITHUB_PAGES_URL {
    echo "https://$GITHUB_USER_NAME.github.io/$GITHUB_REPO_NAME"
}

function GITHUB_PAGES_PATH {
    echo "$OUTPUT_ROOT/docs"
}

function GITHUB_PAGES_CNAME {
    [[ ! "$WEB_HOST_NAME" == *".github.io" ]] && echo "$WEB_HOST_NAME"
}
