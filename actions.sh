#!/bin/bash

set -x
set -u

git remote update && \
git fetch --all && \
git checkout -b "$PR_BRANCH" origin/main && \
git cherry-pick prod..${{github.sha}} && \
git push -u origin "$PR_BRANCH" && \
git checkout main
echo "HI"