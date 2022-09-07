#!/bin/bash

function tasks.commit {

    lib.run_tasks "$(infer.commit)" "$@"

}
