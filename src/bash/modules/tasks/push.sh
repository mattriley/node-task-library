#!/bin/bash

function tasks.push {

    lib.run_tasks "$(infer.push)" "$@"

}
