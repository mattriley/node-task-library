#!/bin/bash

function tasks.config_gen.infer {

    infer.config

}

function tasks.config_gen {

    lib.run_tasks "$(tasks.config_gen.infer)" "$@"

}
