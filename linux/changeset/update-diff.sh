#! /bin/bash
SCRIPT=$(readlink -f "$0")
DIRPATH=$(dirname "$SCRIPT")

cd $DIRPATH/..
diff -U 2 -rpN PKGBUILD.orig PKGBUILD > changeset/PKGBUILD.diff

