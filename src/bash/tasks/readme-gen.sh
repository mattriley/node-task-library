#!/bin/bash

function readme_gen {
    
    set -e

    [ ! -f "$README_TEMPLATE" ] && warn "$README_TEMPLATE not found" && exit

    node.exec_script "$README_GEN" > "$README"
    run_task tasks.doctoc

    git add "$README"

}
