#!/bin/bash

function tasks.gitignore {

    cat <<END >> "$GIT_IGNORE"
.DS_Store
/*cache
/*output
/.nyc_output
/.serverless
/.tap
/.vscode
/build
/config.*
/coverage
/dist*
/itermocil.yml
/metrics
/temp
/node_modules
/node_modules*
/npm-debug.log
END

    sort -u -o "$GIT_IGNORE" "$GIT_IGNORE" && \
    git add "$GIT_IGNORE"

}
