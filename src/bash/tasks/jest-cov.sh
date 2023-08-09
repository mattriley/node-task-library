#!/bin/bash

function tasks.jest_cov {

    core.run_task "jest-test" --coverage "$@"

}
