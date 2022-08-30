#!/bin/bash

function config_gen {

    set -e

    function config_gen { echo "gitignore-gen"; }
    function config_gen { echo "package-gen"; }
    function config_gen { npm.has_dev_dependency "react" && echo "babel-config-gen"; }
    function config_gen { npm.has_dev_dependency "jest" && echo "jest-config-gen"; }
    function config_gen { npm.has_dev_dependency "eslint" && echo "eslint-config-gen"; }
    run_tasks "$(infer_tasks)"

}
