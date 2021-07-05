#!/bin/bash

set -x
set -u

git remote update && \
git fetch --all && \
git checkout main && git reset --hard && \
git checkout -b "$PR_BRANCH" origin/main && \
git cherry-pick PR_BRANCH..prod  && \
git push -u origin "$PR_BRANCH" && \
git checkout main