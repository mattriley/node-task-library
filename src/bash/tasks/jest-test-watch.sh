#!/bin/bash

function tasks.jest_test_watch {

    core.tasks.run_task "jest-test" --watch "$@"

}
