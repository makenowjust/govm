#!/usr/bin/env bash

set -e

# setup variables
export GOVM_SELF_REPO_URL=$PWD
export GOVM_ROOT=$PWD/.test
export GOROOT=$GOVM_ROOT/versions/current
export PATH=$GOROOT/bin:$PATH

# setup govm
rm -rf $GOVM_ROOT
./bin/govm setup

# setup hg repository
export GOVM_REPO_URL=$GOVM_ROOT/.repo
./test/hg/setup.bash

# run each test
tests=()
for test in $tests; do
  eval "./test/${test}.bash"
done
