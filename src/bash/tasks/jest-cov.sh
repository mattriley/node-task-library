#!/bin/bash

function tasks.jest_cov {

    task_runner.run_task "jest-test" --coverage "$@"

}
