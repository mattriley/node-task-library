#!/bin/bash

function infer.start {

    function f1 { npm.has_dev_dependency "nodemon" && echo "nodemon"; }
    function f2 { npm.has_dev_dependency "parcel" && echo "parcel-serve"; } 
    function f3 { npm.has_dev_dependency "serve" && echo "serve-dist"; } 
    list.first "$(lib.infer_tasks)"

}
