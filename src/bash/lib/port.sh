#!/bin/bash

function port {

    node.exec_script "port-gen.js" "$1"

}
