#!/bin/bash

function tasks.upgrade.infer {

    echo "latest"

}

function tasks.upgrade {

    lib.run_tasks "$(tasks.upgrade.infer)"

}
