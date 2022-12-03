#!/bin/bash

function tasks.setup {

    lib.run_tasks "dev-links | install | husky | config-gen"

}
