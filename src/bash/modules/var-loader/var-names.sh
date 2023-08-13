#!/bin/bash

function var_loader.var_names {

    echo "$1" | sed 's;=.*;;' | tr '\n' ' '

}
