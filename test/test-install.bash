#!/usr/bin/env bash

set -e

ok=$(govm install gotest | grep -vE '^govm>' | tail -1 -)
test "$ok" = "OK  "
