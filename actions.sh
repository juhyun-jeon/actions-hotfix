#!/bin/bash

set -x
set -u

git remote update && \
git fetch --all && \
git checkout -b "$PR_BRANCH" main && \
git rebase "$PR_BRANCH" prod && \
git push -u origin "$PR_BRANCH" && \
git checkout main