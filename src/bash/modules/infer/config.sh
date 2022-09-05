#!/bin/bash

function infer.config {

    function f1 { git.is_git_repository && echo "gitignore-gen"; }
    function f2 { npm.is_npm_package && echo "package-gen"; }
    function f3 { npm.has_dev_dependency "react" && echo "babel-config-gen"; }
    function f4 { npm.has_dev_dependency "jest" && echo "jest-config-gen"; }
    function f5 { npm.has_dev_dependency "eslint" && echo "eslint-config-gen"; }
    lib.infer_tasks

}
