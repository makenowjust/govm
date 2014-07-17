#!/usr/bin/env bash

set -e

ok="$(govm list)"
ok1="$(echo "$ok" | head -1)"
ok2="$(echo "$ok" | head -2 | tail -1)"

(test "$ok1" == "* gotest" && test "$ok2" == "  gotest2") || \
  (test "$ok1" == "  gotest2" && test "$ok2" == "* gotest")
