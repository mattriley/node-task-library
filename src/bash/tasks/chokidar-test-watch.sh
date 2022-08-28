#!/bin/bash

# shellcheck disable=SC2086
npx chokidar $TEST_WATCH_PATHS -c "npx task test"
