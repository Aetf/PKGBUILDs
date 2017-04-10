#! /usr/bin/bash

git submodule update --init
git submodule foreach 'origin=$(git remote get-url origin); origin="ssh+git://aur@"${origin:8}; echo "Changing push url to $origin"; git remote set-url --push origin $origin; git checkout master'
