#!/bin/bash

function SHELLCHECK_PATHS {
    echo "$TEST_WATCH_PATHS | $TASKS"
}

function SHELLCHECK_DETECTED {
    which -s shellcheck
    bool.from_exit_status $?
}
