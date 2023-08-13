#!/bin/bash

function tasks.parcel_config_gen {

    cp "$TASK_LIBRARY_ROOT/src/node/configs/$PARCEL_CONFIG" "$PARCEL_CONFIG" && \
    git add "$PARCEL_CONFIG"

}
