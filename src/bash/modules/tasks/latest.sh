#!/bin/bash

function tasks.latest.infer {

    echo "npm-latest"

}

function tasks.latest {

    lib.run_tasks "$(tasks.latest.infer)"

}
