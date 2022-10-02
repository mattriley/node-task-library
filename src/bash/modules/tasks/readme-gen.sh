#!/bin/bash

function tasks.readme_gen {

    lib.run_task "readme-template-gen" && \
    node.exec_infer "$README_GEN" > "$README" && \
    lib.run_task "doctoc" && \
    git add "$README"

}
