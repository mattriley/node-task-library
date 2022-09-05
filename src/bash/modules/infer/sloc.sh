#!/bin/bash

function infer.sloc {

    function f1 { npm.has_dev_dependency "cloc" && echo "cloc-sloc"; }
    lib.infer_tasks

}
