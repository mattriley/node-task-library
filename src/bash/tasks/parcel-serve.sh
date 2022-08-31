#!/bin/bash

function tasks.parcel_serve {

    set -e

    lib.run_task parcel-dist serve --open

}
