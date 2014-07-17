#!/usr/bin/env bash

set -e

ok=(`govm list_remote`)
(test "${ok[0]}" == "gotest" && test "${ok[1]}" == "gotest2") || \
  (test "${ok[0]}" == "gotest2" && test "${ok[1]}" == "gotest")
