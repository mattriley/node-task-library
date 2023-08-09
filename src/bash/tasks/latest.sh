#!/bin/bash

function tasks.latest.infer {

    echo "npm-latest"

}

function tasks.latest {

    core.run_tasks "$(tasks.latest.infer)"

}
