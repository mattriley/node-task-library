#!/bin/bash

function tasks.setup.infer {

    echo "husky | config-gen | node-modules-selected | node-modules-by-author | install"

}

function tasks.setup {

    tasks.run_tasks "$(tasks.setup.infer)"

}