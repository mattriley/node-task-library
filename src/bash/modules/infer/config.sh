#!/bin/bash
# shellcheck disable=2317

function infer.config {

    function infer_config_1 { bool.is_true "$GIT_DETECTED" && echo "gitignore-gen"; }
    function infer_config_2 { bool.is_true "$PACKAGE_JSON_DETECTED" && echo "package-gen"; }
    function infer_config_3 { bool.is_true "$REACT_DETECTED" && echo "babel-config-gen"; }
    function infer_config_4 { bool.is_true "$JEST_DETECTED" && echo "jest-config-gen"; }
    function infer_config_5 { node.is_module_installed "eslint" && echo "eslint-config-gen"; }
    core.infer_tasks infer_config_

}
