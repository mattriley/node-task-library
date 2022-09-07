#!/bin/bash

function tasks.deploy {

    lib.run_tasks "$(infer.deploy)" "$@"

}
