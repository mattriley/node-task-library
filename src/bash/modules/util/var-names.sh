#!/bin/bash

function util.var_names {

    echo "$1" | sed 's;=.*;;' | tr '\n' ' '

}
