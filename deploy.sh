#!/usr/bin/env sh
set -e
npm run build
cd dist
git init
git add -A
git commit -m 'deploy'
git branch -M gh-pages
git remote add origin https://github.com/lyyol2010/ReplaceNickname.git
git push -f origin gh-pages
cd -
