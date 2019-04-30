#/bin/bash

rm -rf /opt/grisp
SHORT_SHA1=$(echo "$GO_REVISION_GITHUB" | cut -c 1-10)
TOOLCHAIN_BASE_PATH="/opt/grisp/grisp-software/grisp-base"
TOOLCHAIN_PATH="$TOOLCHAIN_BASE_PATH/$SHORT_SHA1"
GO_PWD=$PWD
mkdir -p $TOOLCHAIN_BASE_PATH
ln -s $GO_PWD $TOOLCHAIN_PATH
cd $TOOLCHAIN_PATH
./build/build.sh
rm -rf /opt/grisp
