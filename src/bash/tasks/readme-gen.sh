#!/bin/bash

function tasks.readme_gen {

    task_runner.run_task "readme-template-gen" && \
    node.exec_infer "$README_GEN" > "$README" && \
    task_runner.run_task "doctoc" && \
    git add "$README"

}
