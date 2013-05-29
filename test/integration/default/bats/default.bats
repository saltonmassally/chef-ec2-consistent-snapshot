#!/usr/bin/env bats

@test "should have the ec2-consistent-snapshot executable" {
  [ "$(which ec2-consistent-snapshot)" ]
}
