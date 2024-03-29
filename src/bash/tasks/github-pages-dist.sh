#!/bin/bash

function tasks.github_pages_dist {

    core.tasks.run_task "dist" && \
    { { [ -n "$GITHUB_PAGES_CNAME" ] && echo "$GITHUB_PAGES_CNAME" > "$DIST/CNAME"; } || true; } && \
    fs.re_mkdir "$GITHUB_PAGES_PATH" && \
    cp -a "$DIST/" "$GITHUB_PAGES_PATH"

}
