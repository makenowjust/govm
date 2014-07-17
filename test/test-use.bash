#!/usr/bin/env bash

set -e

govm use gotest
ok=$(go)
test "$ok" == "OK"

govm install gotest2 >/dev/null
govm use gotest2
ok=$(go)
test "$ok" == "OK2"

govm use gotest
