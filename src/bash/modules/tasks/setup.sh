#!/bin/bash

function tasks.setup.infer {

    echo "dev-links | install | husky | config-gen"

}

function tasks.setup {

    lib.run_tasks "$(tasks.setup.infer)"

}
