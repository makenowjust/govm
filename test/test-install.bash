#!/usr/bin/env bash

set -e

ok=$(govm install gotest | grep -P '^(?!govm>)' | tail -1)
test "$ok" = "OK  "
