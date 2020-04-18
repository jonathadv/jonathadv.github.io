#!/bin/bash -exu
hugo
mv "public/" "${HOME}/" 
git checkout master

if [[ -d .git ]]; then
  rm -rfv *
  mv ${HOME}/public/* . 
  git add -A && git commit -m "New version" && git push -f
fi

git checkout develop