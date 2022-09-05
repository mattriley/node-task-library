#!/bin/bash

function infer.lint {

    function f1 { npm.has_dev_dependency "eslint" && echo "eslint"; }
    lib.infer_tasks

}
