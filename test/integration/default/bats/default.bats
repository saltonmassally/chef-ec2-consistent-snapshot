#!/usr/bin/env bats

@test "should have the ec2-consistent-snapshot executable" {
  [ "$(which ec2-consistent-snapshot)" ]
}

@test "ec2-consistent-snapshot should function" {
  run ec2-consistent-snapshot --aws-access-key-id 123 --aws-secret-access-key 123 -n 123

  [ "$status" -eq 0 ]
}
