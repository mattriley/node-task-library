#!/bin/bash

function jest_test_watch {

    set -e

    run_task jest-test --watch "$@"

}
