#!/usr/bin/env bash

git ls-files -o --exclude-standard -z | xargs -O git add; git diff --staged 
