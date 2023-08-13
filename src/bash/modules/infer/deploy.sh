#!/bin/bash
# shellcheck disable=2317

function infer.deploy {

    function infer_deploy_1 { npm.published && echo "npm-deploy"; }
    function infer_deploy_2 { ghp.published && echo "github-pages-deploy"; }
    function infer_deploy_3 { bool.true "$SERVERLESS_DETECTED" && echo "sls-deploy"; }
    core.tasks.infer_tasks infer_deploy_

}
