#!/bin/bash

function tasks.jest_test_watch {

    set -e

    lib.run_task jest-test --watch "$@"

}
