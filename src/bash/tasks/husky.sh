#!/bin/bash

function tasks.husky {

    local command="npx task pre-commit"
    local file="./.husky/pre-commit"

    fs.file_exists "$file" && grep -q "$command" "$file" && return

    husky install && \
    husky add "$file" "$command"

}
