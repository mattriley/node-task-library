#!/bin/bash

function tasks.test_watch.infer {

    infer.test_watch

}

function tasks.test_watch {

    lib.run_tasks "$(tasks.test_watch.infer)" "$@"

}
