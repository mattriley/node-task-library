#!/bin/bash

function tasks.npm_deploy {

    reporter.newline && \
    reporter.info "${BOLD}$NPM_BUMP_VERSION${NORM} version will be bumped"

    reporter.ask_ok || return 1

    npm version "$NPM_BUMP_VERSION" && \
    npm publish && \
    git push && \
    git push --tags && \
    reporter.newline
    
}
