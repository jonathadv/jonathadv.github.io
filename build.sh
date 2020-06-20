#!/bin/bash -exu
BASE_DIR="$(mktemp -d)"
hugo
mv "public/" "${BASE_DIR}/"
cp CNAME "${BASE_DIR}/"
git checkout master

if [[ -d .git ]]; then
  rm -rfv *
  mv ${BASE_DIR}/public/* .
  mv "${BASE_DIR}/CNAME"  .
  git add -A && git commit -m "New version" && git push -f
fi

git checkout develop
