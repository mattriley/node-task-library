#!/bin/bash

function tasks.commit.infer {

    infer.commit

}

function tasks.commit {

    core.tasks.run_tasks "$(tasks.commit.infer)" "$@"

}
