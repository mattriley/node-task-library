#!/bin/bash

function tasks.compose {

    # node.exec_infer "compose.js"
    node.exec_infer "$COMPOSE_FILE"

}
