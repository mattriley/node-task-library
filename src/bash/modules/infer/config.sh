#!/bin/bash
# shellcheck disable=2317

function infer.config {

    function infer_config_1 { bool.true "$GIT_DETECTED" && echo "gitignore-gen"; }
    function infer_config_2 { bool.true "$PACKAGE_JSON_DETECTED" && echo "package-gen"; }
    function infer_config_3 { bool.true "$REACT_DETECTED" && echo "babel-config-gen"; }
    function infer_config_4 { bool.true "$JEST_DETECTED" && echo "jest-config-gen"; }
    function infer_config_5 { node.is_module_installed "eslint" && echo "eslint-config-gen"; }
    task_runner.infer_tasks infer_config_

}
