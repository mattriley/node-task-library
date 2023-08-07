#!/bin/bash

function tasks.gitignore_gen {

    cat <<END >> "$GIT_IGNORE"
.DS_Store
/*cache
/*output
/.nyc_output
/.serverless
/.vscode
/build
/config.*
/coverage
/dist*
/itermocil.yml
/metrics
/task-library
/temp
/node_modules
/node_modules*
/npm-debug.log
END

    sort -u -o "$GIT_IGNORE" "$GIT_IGNORE" && \
    git add "$GIT_IGNORE"

}
