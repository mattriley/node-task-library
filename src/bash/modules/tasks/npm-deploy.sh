#!/bin/bash

function tasks.npm_deploy {

    util.info "\n${BOLD}$NPM_BUMP_VERSION${NORM} version will be bumped"

    util.ask_ok || return 1

    npm version "$NPM_BUMP_VERSION" \
        && npm publish \
        && git push \
        && git push --tags

}
