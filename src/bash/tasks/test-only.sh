#!/bin/bash

function test_only {

    set -e

    ZORA_ONLY="true" run_task test

}
