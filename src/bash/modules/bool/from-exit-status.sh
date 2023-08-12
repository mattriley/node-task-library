#!/bin/bash

function bool.from_exit_status {

    [ "$1" = 0 ] && echo "true" || echo "false"

}
