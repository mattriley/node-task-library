#!/bin/bash
# shellcheck disable=2317

function infer.config {

    function infer_config_1 { bool.is_true "$GIT_DETECTED" && echo "gitignore-gen"; }
    function infer_config_2 { npm.is_npm_package && echo "package-gen"; }
    function infer_config_3 { node.is_module_installed "react" && echo "babel-config-gen"; }
    function infer_config_4 { node.is_module_installed "jest" && echo "jest-config-gen"; }
    function infer_config_5 { node.is_module_installed "eslint" && echo "eslint-config-gen"; }
    lib.infer_tasks infer_config_

}
