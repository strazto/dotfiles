#!/usr/bin/env bash

git ls-files --deleted -z | xargs -0 git add -u
