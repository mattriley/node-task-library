#!/bin/bash

function infer.sloc {

    function f1 { npm.has_any_dependency "cloc" && echo "cloc-sloc"; }
    lib.infer_tasks

}
