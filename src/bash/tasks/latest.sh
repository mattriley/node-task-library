#!/bin/bash

function tasks.latest.infer {

    echo "npm-latest"

}

function tasks.latest {

    core.tasks.run_tasks "$(tasks.latest.infer)"

}
