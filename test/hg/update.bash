#!/usr/bin/env bash

cd $GOVM_REPO_URL
cp $GOVM_SELF_REPO_URL/test/hg/go3 $GOVM_REPO_URL/bin/go
cp $GOVM_SELF_REPO_URL/test/hg/go3.bat $GOVM_REPO_URL/bin/go.bat

hg commit -m "update go to 3"
hg tag -m "set tag3" gotest3
