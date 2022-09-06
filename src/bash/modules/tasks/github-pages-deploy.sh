#!/bin/bash

function tasks.github_pages_deploy {

    ui.newline && \
    lib.run_task "github-pages-dist" && \
    cd "$GITHUB_PAGES_PATH" && \
    git add . && \
    git commit -m"Deploy to GitHub Pages" --no-verify && \
    git push && \
    ui.newline

}
