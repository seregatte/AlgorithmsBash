#!/usr/bin/env bats

@test "reversed string ok" {
  run ./index.sh "abcd"
  [ "$status" -eq 0 ]
  [ "${lines[0]}" == "dcba" ]
}