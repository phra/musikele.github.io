#!/bin/bash

echo "start compiling..."

SOURCE_BRANCH="develop"
REPO=https://github.com/musikele/musikele.github.io.git

git clone $REPO compile
cd compile 
git checkout $SOURCE_BRANCH || git checkout --orphan $SOURCE_BRANCH

bundle install
bundle exec jekyll build

cp -rv ./_site/ out/

echo "finished compiling!"