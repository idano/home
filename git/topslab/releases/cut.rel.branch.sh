#!/usr/bin/env bash

# merges features into a release branch according to
# http://wiki.yellowpages.com/display/CP/So+You+Wanna+Be+a+Release+Engineer

# prerequisites: 
# git
# 
# gem sprite
# 

set -uex

# TODO: take in a list of features to be merged, not just one
FTR_NAME=$1
REL_NAME=$2

# merge the feature 

# verify we're on the right branch
if not `git rev-parse --abbrev-ref HEAD | grep "feature/$FTR_NAME"`; then
  echo 'ERROR: please switch to the feature branch you want to merge'
  exit
fi

git pull
git checkout develop
git merge origin/develop
git checkout feature/$FTR_NAME
git pull origin/develop
git flow feature finish $FTR_NAME

# git push origin develop
git fetch
if [ `git log origin/develop..feature/$FTR_NAME | wc -l` -gt 0]; then
# TODO: verify: this should actually never be necessary since we only just merged...
  echo 'we found some stray commits on the feature branch'
fi

# delete feature branch
git push origin :feature/$FTR_NAME
git flow release start $REL_NAME
# TODO: verify sprite gem is there
sprite

rake optimize
git status
git add .
git commit
git push origin release/$REL_NAME

echo "Release $REL_NAME was pushed to git"

