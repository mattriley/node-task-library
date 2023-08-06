#!/bin/bash
# shellcheck disable=2317

function infer.start {

    function infer_start_1 { node.is_module_installed "nodemon" && echo "nodemon"; }
    function infer_start_2 { node.is_module_installed "parcel" && echo "parcel-serve"; } 
    function infer_start_3 { node.is_module_installed "serve" && echo "serve-dist"; } 
    list.first "$(lib.infer_tasks infer_start_)" 

}
