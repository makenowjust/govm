#!/usr/bin/env bash

set -e

ok=$(govm list_remote)
test "$ok" == "gotest"
