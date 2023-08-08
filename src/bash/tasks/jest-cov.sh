#!/bin/bash

function tasks.jest_cov {

    tasks.run_task "jest-test" --coverage "$@"

}
