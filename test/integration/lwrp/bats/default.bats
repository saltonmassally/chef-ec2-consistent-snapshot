#!/usr/bin/env bats

@test "should write a wrapper with the correct content" {
  [ "$(cat /usr/local/bin/snapshot_wrapper | grep 'ec2-consistent-snapshot')" ]
  [ "$(cat /usr/local/bin/snapshot_wrapper | grep '\-\-region us-east-1')" ]
  [ "$(cat /usr/local/bin/snapshot_wrapper | grep '\-\-mysql ')" ]
  [ "$(cat /usr/local/bin/snapshot_wrapper | grep '\-\-mysql-username=root')" ]
  [ "$(cat /usr/local/bin/snapshot_wrapper | grep '\-\-freeze-filesystem /var/lib/mysql')" ]
  [ "$(cat /usr/local/bin/snapshot_wrapper | grep 'vol-abcd123')" ]
}
