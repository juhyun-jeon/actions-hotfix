#!/bin/bash
git remote update && \
git fetch --all && \
git checkout -b "$PR_BRANCH" origin/main && \
git cherry-pick $(git merge-base origin/main ${{github.sha}})..${{github.sha}} && \
git push -u origin "$PR_BRANCH" && \
git checkout main