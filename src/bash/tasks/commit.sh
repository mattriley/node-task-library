#!/bin/bash

function tasks.commit.infer {

    infer.commit

}

function tasks.commit {

    task_runner.run_tasks "$(tasks.commit.infer)" "$@"

}
