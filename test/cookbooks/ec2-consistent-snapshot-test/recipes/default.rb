include_recipe "ec2-consistent-snapshot"

ec2_consistent_snapshot_wrapper "/usr/local/bin/snapshot_wrapper" do
  freeze_filesystem "/var/lib/mysql"
  volumes           ["vol-abcd123"]
end
