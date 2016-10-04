#!/usr/bin/python
import boto3
import sys  
import botocore

action = sys.argv[1]
bucket_name = sys.argv[2]

s3_client = boto3.client('s3')


if action == 'create-bucket':
    print 'creating a bucket'
    s3_client.create_bucket(Bucket = bucket_name)

s3 = boto3.resource('s3')

if action == 'delete-bucket':
    print 'deletting a bucket'
    bucket = s3.Bucket(bucket_name)
    try:
        for key in bucket.objects.all():
            print key
            key.delete()
        bucket.delete()
    except botocore.exceptions.ClientError as e:
        print e.response['Error']['Code']

if action == 'upload':
    print "uploading objects"
    s3.Object(bucket_name, 'img-2.jpeg').put(Body=open('/tmp/img-1.jpeg'))
