#!/bin/bash

function tasks.update.infer {

    echo "latest"

}

function tasks.update {

    tasks.run_tasks "$(tasks.update.infer)"

}
