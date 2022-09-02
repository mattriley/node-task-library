#!/bin/bash

function tasks.deploy_infer {

    function f1 { npm.is_published && echo "npm-deploy"; }
    function f2 { ghp.is_published && echo "github-pages-deploy"; }
    function f3 { [ -f "$SERVERLESS_CONFIG" ] && echo "sls-deploy"; }
    lib.infer_and_run_tasks

}
