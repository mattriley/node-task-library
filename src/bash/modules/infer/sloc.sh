#!/bin/bash
# shellcheck disable=2317

function infer.sloc {

    function f1 { node.is_module_installed "cloc" && echo "cloc-sloc"; }
    lib.infer_tasks

}
