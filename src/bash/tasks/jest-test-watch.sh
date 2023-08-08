#!/bin/bash

function tasks.jest_test_watch {

    tasks.run_task "jest-test" --watch "$@"

}
