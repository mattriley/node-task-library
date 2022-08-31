#!/bin/bash

function tasks.deploy_infer {

    set -e

    function f1 { lib.is_on_npm && echo "npm-deploy"; }
    function f2 { lib.is_on_ghp && echo "github-pages-deploy"; }
    function f3 { lib.is_on_sls && echo "sls-deploy"; }
    lib.run_tasks "$(lib.infer_tasks)"

}
