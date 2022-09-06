#!/bin/bash

function tasks.jest_cov {

    lib.run_task "jest-test" --coverage "$@"

}
