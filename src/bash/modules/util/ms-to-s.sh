#!/bin/bash

function util.ms_to_s {

    echo "scale=1;$1/1000" | bc

}