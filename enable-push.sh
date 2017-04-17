#! /usr/bin/bash

git submodule update --init

if [[ $# -eq 0 ]]; then
    git submodule foreach 'origin=$(git remote get-url origin); origin="ssh+git://aur@"${origin:8}; echo "Changing push url to $origin"; git remote set-url --push origin $origin; git checkout master'
else
    for repo in "$@"; do
        pushd $repo >/dev/null
        echo "Entering $repo"
        origin=$(git remote get-url origin)
        origin="ssh+git://aur@"${origin:8}
        echo "Changing push url to $origin"
        git remote set-url --push origin $origin
        git checkout master
        popd >/dev/null
    done
fi
