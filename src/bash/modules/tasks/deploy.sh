#!/bin/bash

function tasks.deploy {

    set -e

    lib.run_task deploy-infer

}
