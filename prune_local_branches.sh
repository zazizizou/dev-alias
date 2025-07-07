#!/bin/bash

git fetch origin
git fetch me

local_branches=$(git for-each-ref --format='%(refname:short)' refs/heads)
remote_branches=$(git branch -r | sed 's/^[[:space:]]*//' | cut -d/ -f2- | sort -u)

for branch in $local_branches; do
  if [ "$branch" = "$(git symbolic-ref --short HEAD)" ]; then
    echo "Skipping current branch: $branch"
    continue
  fi

  if ! echo "$remote_branches" | grep -qx "$branch"; then
    echo "Deleting local branch: $branch"
    git branch -D "$branch"
  else
    echo "Keeping branch: $branch"
  fi
done
