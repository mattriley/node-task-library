#!/bin/bash
# shellcheck disable=2068

function tasks.start.infer {

    infer.start

}

function tasks.start {

    core.run_tasks "$(tasks.start.infer)" $@

}
