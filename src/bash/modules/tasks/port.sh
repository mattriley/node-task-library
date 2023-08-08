#!/bin/bash

function tasks.port {

    node.exec_script "port-gen.js" "$1"

}
