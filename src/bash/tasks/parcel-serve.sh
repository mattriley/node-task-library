#!/bin/bash

function tasks.parcel_serve {

    core.run_task "parcel-dist" serve --open

}
