#!/bin/bash

function tasks.commit.infer {

    infer.commit

}

function tasks.commit {

    core.run_tasks "$(tasks.commit.infer)" "$@"

}
