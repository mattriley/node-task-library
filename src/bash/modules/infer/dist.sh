#!/bin/bash

function infer.dist {

    function f1 { npm.has_dev_dependency "parcel" && echo "parcel-dist"; }
    lib.infer_tasks

}