#!/usr/bin/env bash

set -e

ok=$(govm build gotest windows amd64 | grep -vE '^govm>' | tail -1 -)
test "$ok" == "OK windows amd64"
