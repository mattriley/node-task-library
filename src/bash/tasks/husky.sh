#!/bin/bash

function tasks.husky {

    set -e

    command="run_task pre-commit"
    file="./.husky/pre-commit"
    [ -f "$file" ] && grep -q "$command" "$file" && exit

    husky install
    husky add "$file" "$command"

}
