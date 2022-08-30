#!/bin/bash

function npm_deploy {

    set -e

    echo
    echo "${BOLD}$NPM_BUMP_VERSION${NORM} version will be bumped"

    ask_ok

    npm version "$NPM_BUMP_VERSION" \
        && npm publish \
        && git push \
        && git push --tags

}
