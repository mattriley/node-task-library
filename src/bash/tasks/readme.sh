#!/bin/bash

function tasks.readme {

    core.tasks.run_task "readme-template" && \
    node.exec_infer "$README_GEN" > "$README" && \
    core.tasks.run_task "doctoc" && \
    git add "$README"

}
