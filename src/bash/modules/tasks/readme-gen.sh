#!/bin/bash

function tasks.readme_gen {

    tasks.readme_template_gen

    node.exec_infer "$README_GEN" > "$README" && \
        lib.run_task "doctoc" && \
        git add "$README"

}
