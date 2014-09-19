#!/bin/sh -e
FILES="$(git diff $(git merge-base origin/develop HEAD).. --name-only)"
if [ -n "$FILES" ]; then
  echo "$FILES" | sort -u | xargs find 2> /dev/null
fi
