#!/usr/bin/env bash

set -e

mkdir -p $GOVM_REPO_URL
cd $GOVM_REPO_URL
hg init

cp $GOVM_SELF_REPO_URL/test/hg/hgrc $GOVM_REPO_URL/.hg/hgrc

mkdir bin src
cp $GOVM_SELF_REPO_URL/test/hg/go $GOVM_REPO_URL/bin
cp $GOVM_SELF_REPO_URL/test/hg/go.bat $GOVM_REPO_URL/bin
cp $GOVM_SELF_REPO_URL/test/hg/make.bash $GOVM_REPO_URL/src
cp $GOVM_SELF_REPO_URL/test/hg/make.bat $GOVM_REPO_URL/src
hg add src/make.bash src/make.bat bin/go bin/go.bat

hg commit -m "add make.{bash,bat} and go"
hg tag -m "set tag" gotest

cp $GOVM_SELF_REPO_URL/test/hg/go2 $GOVM_REPO_URL/bin/go
cp $GOVM_SELF_REPO_URL/test/hg/go2.bat $GOVM_REPO_URL/bin/go.bat
cp $GOVM_SELF_REPO_URL/test/hg/make2.bash $GOVM_REPO_URL/src/make.bash
cp $GOVM_SELF_REPO_URL/test/hg/make2.bat $GOVM_REPO_URL/src/make.bat

hg commit -m "update make.{bash,bat} and go"
hg tag -m "set release tag" release
hg tag -m "set tag2" gotest2
