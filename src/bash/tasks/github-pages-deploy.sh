#!/bin/bash

npx task github-pages-dist

cd "$GITHUB_PAGES_PATH" \
    && git add . \
    && git commit -m"Deploy to GitHub Pages" --no-verify \
    && git push