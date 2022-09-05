#!/bin/bash

function tasks.cov {

    lib.run_tasks "$(infer.cov)"

}
