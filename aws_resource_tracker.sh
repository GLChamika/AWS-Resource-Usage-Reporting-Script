#!/bin/bash

#########################
# Author: Lahiru
# Date: 12th-Aug-2023
#
# Version: v1
#
# This script will report the AWS resource usage
##########################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

#list s3 buckets
echo "Print list of S3 buckets"
aws s3 ls

#list EC2 Instances
echo "Print list of EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list aws lambda functions
echo "Print list of lambda functions"
aws lambda list-functions

#list IAM users
echo "Print list of IAM Users"
aws iam list-users
