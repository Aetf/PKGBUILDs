#! /bin/bash
SCRIPT=$(readlink -f "$0")
DIRPATH=$(dirname "$SCRIPT")

patch -p0 -i "$DIRPATH/PKGBUILD.diff"
for f in $DIRPATH/*.patch
do
    name=$(basename "$f")
    echo "Adding $name"
    ln -rs "$f" "$name"
done
