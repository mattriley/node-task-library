#!/bin/bash

npx chokidar $TEST_WATCH_PATHS -c "npx task test"