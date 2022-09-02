#!/bin/bash

function tasks.config_gen {

    function f1 { echo "gitignore-gen"; }
    function f2 { echo "package-gen"; }
    function f3 { npm.has_dev_dependency "react" && echo "babel-config-gen"; }
    function f4 { npm.has_dev_dependency "jest" && echo "jest-config-gen"; }
    function f5 { npm.has_dev_dependency "eslint" && echo "eslint-config-gen"; }
    lib.infer_and_run_tasks

}
