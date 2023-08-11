#!/bin/bash

function tasks.upgrade.infer {

    echo "latest"

}

function tasks.upgrade {

    task_runner.run_tasks "$(tasks.upgrade.infer)"

}
