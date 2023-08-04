#!/bin/bash

function tasks.setup.infer {

    echo "husky | config-gen | node_modules_selected | node-modules-by-author | install"

}

function tasks.setup {

    lib.run_tasks "$(tasks.setup.infer)"

}
