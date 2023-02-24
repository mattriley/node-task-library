#!/bin/bash

function tasks.test_only.infer {

    echo "test"

}

function tasks.test_only {

    export ZORA_ONLY="true" 
    lib.run_task "$(tasks.test_only.infer)"

}
