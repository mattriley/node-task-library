#!/bin/bash

function tasks.jest_cov {

    core.tasks.run_task "jest-test" --coverage "$@"

}
