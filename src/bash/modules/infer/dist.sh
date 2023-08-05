#!/bin/bash

function infer.dist {

    function f1 { node.is_module_installed "parcel" && echo "parcel-dist"; }
    lib.infer_tasks

}
