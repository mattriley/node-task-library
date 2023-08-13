#!/bin/bash

function core.vars.var_names {

    echo "$1" | sed 's;=.*;;' | tr '\n' ' '

}
