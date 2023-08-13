#!/bin/bash
# shellcheck disable=2317

function infer.sloc {

    function infer_sloc_1 { node.module_installed "cloc" && echo "cloc-sloc"; }
    core.tasks.infer_tasks infer_sloc_

}
