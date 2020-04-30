#!/bin/bash

if [ $TRAVIS_PULL_REQUEST == "true" ]; then
    exit 0
fi

set -e

rm -rf .docz/dist
mkdir .docz/dist

git clone https://${GITHUB_TOKEN}@github.com/KovuTheHusky/developer.myfursona.com.git --branch gh-pages .docz/dist

yarn build

cd .docz/dist
git config user.email "kovuthehusky@gmail.com"
git config user.name "KovuTheHusky"
git add --all
git commit -a -m "Travis #$TRAVIS_BUILD_NUMBER"
git push --force origin gh-pages
