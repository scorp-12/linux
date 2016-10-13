#!/usr/bin/python
import boto3

ec2 = boto3.resource('ec2')

for volume in ec2.volumes.all():
  vol_id = volume.id
  desc = "back-%s" %(vol_id)
  print desc
  ec2.create_snapshot(VolumeId = vol_id, Description = desc)
