#!/bin/bash

set -x
set -u

git remote update && \
git fetch --all && \
git checkout main && \
git cherry-pick main..prod  && \
git push