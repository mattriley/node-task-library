#!/bin/bash

function tasks.setup.infer {

    echo "node-modules-selected | node-modules-by-author | install | husky | config-gen"

}

function tasks.setup {

    lib.run_tasks "$(tasks.setup.infer)"

}
