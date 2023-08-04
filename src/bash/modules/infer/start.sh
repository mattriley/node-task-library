#!/bin/bash

function infer.start {

    function f1 { node.module_installed "nodemon" && echo "nodemon"; }
    function f2 { node.module_installed "parcel" && echo "parcel-serve"; } 
    function f3 { node.module_installed "serve" && echo "serve-dist"; } 
    list.first "$(lib.infer_tasks)"

}
