#!/bin/bash
# shellcheck disable=2317

function infer.config {

    function infer_config_1 { bool.true "$GIT_DETECTED" && echo "gitignore-gen"; }
    function infer_config_2 { bool.true "$PACKAGE_CONFIG_DETECTED" && echo "package-config"; }
    function infer_config_3 { bool.true "$PARCEL_DETECTED" && echo "parcel-config"; }
    function infer_config_4 { bool.true "$REACT_DETECTED" && echo "babel-config"; }
    function infer_config_5 { bool.true "$JEST_DETECTED" && echo "jest-config"; }
    function infer_config_6 { bool.true "$ESLINT_DETECTED" && echo "eslint-config"; }
    core.tasks.infer_tasks infer_config_

}
