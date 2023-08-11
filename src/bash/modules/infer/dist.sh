#!/bin/bash
# shellcheck disable=2317

function infer.dist {

    function infer_dist_1 { node.is_module_installed "parcel" && echo "parcel-dist"; }
    task_runner.infer_tasks infer_dist_

}
