#!/bin/bash

function deploy_infer {

    set -e

    function deploy_infer { is_on_npm && echo "npm-deploy"; }
    function deploy_infer { is_on_ghp && echo "github-pages-deploy"; }
    function deploy_infer { is_on_sls && echo "sls-deploy"; }
    run_tasks "$(infer_tasks)"

}
