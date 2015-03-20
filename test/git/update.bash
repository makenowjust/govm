#!/usr/bin/env bash

cd $GOVM_REPO_URL
cp $GOVM_SELF_REPO_URL/test/git/go3 $GOVM_REPO_URL/bin/go
cp $GOVM_SELF_REPO_URL/test/git/go3.bat $GOVM_REPO_URL/bin/go.bat

git commit -am "update go to 3"
git tag gotest3
