#!/bin/bash

function tasks.parcel_serve {

    core.tasks.run_task "parcel-dist" serve --open

}
