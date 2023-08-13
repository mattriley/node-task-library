#!/bin/bash

function fp.is_function {

    [ "$(type -t "$1")" = "function" ]

}
