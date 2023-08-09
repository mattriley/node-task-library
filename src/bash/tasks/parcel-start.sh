#!/bin/bash

function tasks.parcel_start.infer {

    echo "parcel_serve"

}

function tasks.parcel_start {

    core.run_tasks "$(tasks.parcel_start.infer)" "$@"

}
