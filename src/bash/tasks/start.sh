#!/bin/bash
# shellcheck disable=2068

function tasks.start.infer {

    infer.start

}

function tasks.start {

    core.tasks.run_tasks "$(tasks.start.infer)" $@

}
