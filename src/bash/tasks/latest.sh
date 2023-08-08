#!/bin/bash

function tasks.latest.infer {

    echo "npm-latest"

}

function tasks.latest {

    tasks.run_tasks "$(tasks.latest.infer)"

}
