#!/bin/bash

function tasks.test_watch.infer {

    infer.test_watch

}

function tasks.test_watch {

    task_runner.run_tasks "$(tasks.test_watch.infer)" "$@"

}
