#!/bin/bash

function tasks.readme_gen {

    core.run_task "readme-template-gen" && \
    node.exec_infer "$README_GEN" > "$README" && \
    core.run_task "doctoc" && \
    git add "$README"

}
