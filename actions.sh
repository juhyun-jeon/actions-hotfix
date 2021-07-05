#!/bin/bash

set -x
set -u

git remote update && \
git fetch --all && \
git checkout main && git cherry-pick --abort || git reset --hard && \
git checkout -b "$PR_BRANCH" origin/main && \
git cherry-pick main..prod || git add . && git commit -m "hello" && \
git push -u origin "$PR_BRANCH" && \
git checkout main