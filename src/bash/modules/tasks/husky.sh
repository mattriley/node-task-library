#!/bin/bash

function tasks.husky {

    

    command="$TASK_LIBRARY_ROOT/bin/task pre-commit"
    file="./.husky/pre-commit"
    [ -f "$file" ] && grep -q "$command" "$file" && return

    husky install
    husky add "$file" "$command"

}
