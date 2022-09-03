#!/bin/bash

function tasks.npm_deploy {

    ui.info "${BOLD}$NPM_BUMP_VERSION${NORM} version will be bumped"

    ui.ask_ok || return 1

    npm version "$NPM_BUMP_VERSION" \
        && npm publish \
        && git push \
        && git push --tags

}
