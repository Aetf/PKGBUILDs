#! /bin/bash
SCRIPT=$(readlink -f "$0")
DIRPATH=$(dirname "$SCRIPT")

cd $DIRPATH
yaourt -G linux

cd $DIRPATH/..
find  . -maxdepth 1 -depth ! -name 'changeset' -and ! -name '.gitignore' -delete

mv $DIRPATH/linux/* $DIRPATH/..
rmdir $DIRPATH/linux

patch -p0 -i "$DIRPATH/PKGBUILD.diff"
for f in $DIRPATH/*.patch
do
    name=$(basename "$f")
    echo "Adding $name"
    ln -rs "$f" "$name"
done
updpkgsums
