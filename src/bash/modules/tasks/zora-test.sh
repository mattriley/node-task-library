#!/bin/bash

function tasks.zora_test {

    local command="zora-testrunner.mjs"
    [ "$COMPOSE" ] && command="zora-compose-testrunner.mjs"

    node.exec_module "$command" "$TEST_PATTERN"

}
