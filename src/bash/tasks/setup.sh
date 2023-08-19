#!/bin/bash

function tasks.setup.infer {

    echo "husky | config | node-modules-selected | node-modules-by-author | install"

}

function tasks.setup {

    core.tasks.run_tasks "$(tasks.setup.infer)"

}
