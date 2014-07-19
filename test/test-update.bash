#!/usr/bin/env bash

$GOVM_SELF_REPO_URL/test/hg/update.bash

ok=$(govm list_remote | grep gotest3)
test -z "$ok"

govm update >/dev/null
ok=$(govm list_remote | grep gotest3)
test "$ok" == "gotest3"
