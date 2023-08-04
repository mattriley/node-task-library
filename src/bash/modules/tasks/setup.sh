#!/bin/bash

function tasks.setup.infer {

    echo "dev-links | node-modules-by-author | install | husky | config-gen"

}

function tasks.setup {

    lib.run_tasks "$(tasks.setup.infer)"

}
