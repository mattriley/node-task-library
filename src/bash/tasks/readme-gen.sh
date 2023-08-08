#!/bin/bash

function tasks.readme_gen {

    tasks.run_task "readme-template-gen" && \
    node.exec_infer "$README_GEN" > "$README" && \
    tasks.run_task "doctoc" && \
    git add "$README"

}
