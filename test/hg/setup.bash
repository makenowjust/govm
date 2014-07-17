#!/usr/bin/env bash

mkdir -p $GOVM_REPO_URL
cd $GOVM_REPO_URL
hg init

cp $GOVM_SELF_REPO_URL/test/hg/hgrc $GOVM_REPO_URL/.hg/hgrc

mkdir bin src
cp $GOVM_SELF_REPO_URL/test/hg/go $GOVM_REPO_URL/bin
cp $GOVM_SELF_REPO_URL/test/hg/make.bash $GOVM_REPO_URL/src
hg add src/make.bash

hg commit -m "add make.bash"
hg tag -m "set tag" gotest
