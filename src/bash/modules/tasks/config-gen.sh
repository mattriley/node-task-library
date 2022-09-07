#!/bin/bash

function tasks.config_gen {

    lib.run_tasks "$(infer.config)" "$@"

}
