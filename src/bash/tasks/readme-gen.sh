#!/bin/bash

function tasks.readme_gen {

    core.tasks.run_task "readme-template-gen" && \
    node.exec_infer "$README_GEN" > "$README" && \
    core.tasks.run_task "doctoc" && \
    git add "$README"

}
