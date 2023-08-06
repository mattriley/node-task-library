#!/bin/bash
# shellcheck disable=2317

function infer.start {

    function f1 { node.is_module_installed "nodemon" && echo "nodemon"; }
    function f2 { node.is_module_installed "parcel" && echo "parcel-serve"; } 
    function f3 { node.is_module_installed "serve" && echo "serve-dist"; } 
    list.first "$(lib.infer_tasks)"

}
