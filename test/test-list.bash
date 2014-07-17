#!/usr/bin/env bash

set -e

ok=$(govm list)
test "$ok" == "* gotest"
