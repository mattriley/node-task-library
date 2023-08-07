#!/bin/bash

function tasks.commit.infer {

    infer.commit

}

function tasks.commit {

    lib.run_tasks "$(tasks.commit.infer)" "$@"

}
