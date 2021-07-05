#!/bin/bash

set -x
set -u

git remote update && \
git fetch --all && \
git checkout -b "$PR_BRANCH" origin/main && \
git rebase prod "$PR_BRANCH" && \
git push -u origin "$PR_BRANCH" && \
git checkout main