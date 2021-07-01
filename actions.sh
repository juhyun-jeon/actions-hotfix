#!/bin/bash
git remote update && \
git fetch --all && \
git checkout -b "$PR_BRANCH" origin/main && \
echo "$(git merge-base "$PR_BRANCH" prod)" && \ 
git cherry-pick $(git merge-base "$PR_BRANCH" prod)..prod && \
git push -u origin "$PR_BRANCH" && \
git checkout main