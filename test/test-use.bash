#!/usr/bin/env bash

set -e

govm use gotest
ok=$(go)
test "$ok" == "OK"
