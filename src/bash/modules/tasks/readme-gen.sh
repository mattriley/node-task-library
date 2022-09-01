#!/bin/bash

function tasks.readme_gen {
    
    set -e

    [ ! -f "$README_TEMPLATE" ] && util.warn "$README_TEMPLATE not found" && exit

    node.exec_script "$README_GEN" > "$README"
    lib.run_task doctoc

    git add "$README"

}