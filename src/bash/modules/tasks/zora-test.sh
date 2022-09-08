#!/bin/bash

function tasks.zora_test {

    local compose; compose="$(set -- "$SRC"/compose.*js; echo "$1")"

    local command="zora-testrunner.mjs"
    [ -f "$compose" ] && command="zora-compose-testrunner.mjs"

    node.exec_module "$command" "$TEST_PATTERN"

}
