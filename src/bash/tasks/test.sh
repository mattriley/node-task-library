#!/bin/bash

fs.empty "$TESTS" && warn "No tests found" && exit

npx task test-infer
