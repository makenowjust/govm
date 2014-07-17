#!/usr/bin/env bash

set -e

govm use gotest
if [ "$OS" == "Windows_NT" ]; then
  ok=$(cmd /c go)
else
  ok=$(go)
fi
test "$ok" == "OK"

govm install gotest2 >/dev/null
govm use gotest2
if [ "$OS" == "Windows_NT" ]; then
  ok=$(cmd /c go)
else
  ok=$(go)
fi
test "$ok" == "OK2"

govm use gotest
