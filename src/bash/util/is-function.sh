#!/bin/bash

function util.is_function {
    
    [ "$(type -t "$1")" = "function" ]

}
