#!/bin/bash

function tasks.jest_test_watch {

    task_runner.run_task "jest-test" --watch "$@"

}
