#!/bin/bash
# shellcheck disable=2317

function infer.start {

    function infer_start_1 { node.module_installed "nodemon" && echo "nodemon"; }
    function infer_start_2 { node.module_installed "parcel" && echo "parcel-serve"; } 
    function infer_start_3 { node.module_installed "serve" && echo "serve-dist"; } 
    list.first "$(task_runner.infer_tasks infer_start_)" 

}
