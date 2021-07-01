#!/bin/bash

set -x
set -u

git remote update && \
git fetch --all && \
git checkout -b "$PR_BRANCH" origin/main && \
git cherry-pick db6b513..prod && \
git push -u origin "$PR_BRANCH" && \
git checkout main
echo "HI"