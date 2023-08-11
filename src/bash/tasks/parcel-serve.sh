#!/bin/bash

function tasks.parcel_serve {

    task_runner.run_task "parcel-dist" serve --open

}
