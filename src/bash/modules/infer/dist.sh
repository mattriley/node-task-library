#!/bin/bash

function infer.dist {

    function f1 { node.module_installed "parcel" && echo "parcel-dist"; }
    lib.infer_tasks

}
