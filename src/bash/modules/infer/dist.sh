#!/bin/bash
# shellcheck disable=2317

function infer.dist {

    function infer_dist_1 { bool.is_true "$PARCEL_DETECTED" && echo "parcel-dist"; }
    core.tasks.infer_tasks infer_dist_

}
