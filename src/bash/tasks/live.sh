#!/bin/bash

function tasks.live.vars {

    export STAGE="prod"

}

function tasks.live {

    tasks.deploy

}
