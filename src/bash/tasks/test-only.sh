#!/bin/bash

function tasks.test_only {

    set -e

    ZORA_ONLY="true" lib.run_task test

}
