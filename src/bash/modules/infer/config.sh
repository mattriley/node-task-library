#!/bin/bash

function infer.config {

    function f1 { git.is_git_repository && echo "gitignore-gen"; }
    function f2 { npm.is_npm_package && echo "package-gen"; }
    function f3 { node.is_module_installed "react" && echo "babel-config-gen"; }
    function f4 { node.is_module_installed "jest" && echo "jest-config-gen"; }
    function f5 { node.is_module_installed "eslint" && echo "eslint-config-gen"; }
    lib.infer_tasks

}
