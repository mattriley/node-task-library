#!/bin/bash

function tasks.update.infer {

    echo "latest"

}

function tasks.update {

    core.run_tasks "$(tasks.update.infer)"

}
