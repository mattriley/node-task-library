#!/bin/bash

function tasks.config_gen {

    set -e

    function f1 { echo "gitignore-gen"; }
    function f2 { echo "package-gen"; }
    function f3 { lib.npm.has_dev_dependency "react" && echo "babel-config-gen"; }
    function f4 { lib.npm.has_dev_dependency "jest" && echo "jest-config-gen"; }
    function f5 { lib.npm.has_dev_dependency "eslint" && echo "eslint-config-gen"; }
    lib.run_tasks "$(lib.infer_tasks)"

}
