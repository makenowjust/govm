#!/usr/bin/env bash

set -e

mkdir -p $GOVM_REPO_URL
cd $GOVM_REPO_URL
git init

cp $GOVM_SELF_REPO_URL/test/git/config $GOVM_REPO_URL/.git/config

mkdir bin src
cp $GOVM_SELF_REPO_URL/test/git/go $GOVM_REPO_URL/bin
cp $GOVM_SELF_REPO_URL/test/git/go.bat $GOVM_REPO_URL/bin
cp $GOVM_SELF_REPO_URL/test/git/make.bash $GOVM_REPO_URL/src
cp $GOVM_SELF_REPO_URL/test/git/make.bat $GOVM_REPO_URL/src
git add src/make.bash src/make.bat bin/go bin/go.bat

git commit -m "add make.{bash,bat} and go"
git tag gotest

cp $GOVM_SELF_REPO_URL/test/git/go2 $GOVM_REPO_URL/bin/go
cp $GOVM_SELF_REPO_URL/test/git/go2.bat $GOVM_REPO_URL/bin/go.bat
cp $GOVM_SELF_REPO_URL/test/git/make2.bash $GOVM_REPO_URL/src/make.bash
cp $GOVM_SELF_REPO_URL/test/git/make2.bat $GOVM_REPO_URL/src/make.bat

git commit -am "update make.{bash,bat} and go"
git tag release
git tag gotest2
