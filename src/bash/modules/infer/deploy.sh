#!/bin/bash
# shellcheck disable=2317

function infer.deploy {

    function infer_deploy_1 { npm.is_published && echo "npm-deploy"; }
    function infer_deploy_2 { ghp.is_published && echo "github-pages-deploy"; }
    function infer_deploy_3 { [ "$SERVERLESS_DETECTED" = "true" ] && echo "sls-deploy"; }
    lib.infer_tasks infer_deploy_

}
