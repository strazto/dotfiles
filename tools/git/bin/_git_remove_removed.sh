#!/usr/bin/env bash

git diff --diff-filter=D --name-only -z | xargs -0 -I"{}" git add -u "{}"
