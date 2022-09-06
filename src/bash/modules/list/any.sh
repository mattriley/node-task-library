#!/bin/bash

function list.any {

    local result; result="$(list.find "$1")"
    [ "$result" ]

}
