#!/bin/bash -exu
hugo
mv "public/" "${HOME}/" 
cp CNAME "${HOME}/" 
git checkout master

if [[ -d .git ]]; then
  rm -rfv *
  mv ${HOME}/public/* . 
  mv "${HOME}/CNAME"  .
  git add -A && git commit -m "New version" && git push -f
fi

git checkout develop