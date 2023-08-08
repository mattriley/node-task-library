#!/bin/bash

function util.port {

    node.exec_script "port-gen.js" "$1"

}
