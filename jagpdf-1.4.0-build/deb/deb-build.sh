#!/bin/bash

set -e

DEB_DIR=$1
JAGPDF_INSTALL_DIR=$2

VERSION=1.4.0
ARCH_OS=linux # hard-wired for now
ARCH_CPU=`dpkg --print-architecture`
ARCH=$ARCH_OS.amd64
SRC_DIR=/home/guilherme/ufes/Trabalho-LP/jagpdf-1.4.0

cd $DEB_DIR
cp control.stage debian/DEBIAN/control

source prepare

DEB=jagpdf-$VERSION.$ARCH$PKG_FILE_SUFFIX.deb

find ./debian -type d | xargs chmod 755
find ./debian -type f -name '*~' -delete
find ./debian -type f -name '*.so*' -exec strip {} \;

#DOC_DIR=debian/usr/share/doc/$PKG
# echo "$PKG Debian maintainer and upstream author are identical.
# Therefore see also normal changelog file for Debian changes." > $DOC_DIR/changelog.Debian
# cp $SRC_DIR/HISTORY.txt $DOC_DIR/changelog
# gzip --best $DOC_DIR/changelog
# gzip --best $DOC_DIR/changelog.Debian
#cp $SRC_DIR/LICENSE.txt $DOC_DIR/copyright

sed -i "s/%package-name%/$PKG/g" debian/DEBIAN/control
sed -i "s/%deb-arch%/$ARCH_CPU/g" debian/DEBIAN/control
sed -i "s/%package-extra-dep%//g" debian/DEBIAN/control

fakeroot dpkg-deb --build debian
mv debian.deb $DEB

set +e
lintian $DEB
true # ignore lintian return code



