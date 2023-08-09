#!/bin/bash

function tasks.jest_test_watch {

    core.run_task "jest-test" --watch "$@"

}
