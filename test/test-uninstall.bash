#!/usr/bin/env bash

set -e

govm uninstall gotest2 >/dev/null
ok=$(govm list)
test "$ok" == "* gotest"
