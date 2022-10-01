#!/bin/bash

function tasks.test_only {

    export ZORA_ONLY="true" 
    lib.run_task "test"

}
