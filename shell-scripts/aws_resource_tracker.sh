#!/bin/bash

##################################
# Author: Akhilesh
#
# Date: 05/04/2024
#
# Version: v1
#
# This script will report the AWS resource usage.
#
##############################################


#
# AWS s3
# AWS EC2
# AWS lambda
# AWS IAM Users

set -x

#
# List s3 buckets
echo "print list of s3 buckets"
aws s3 ls > resourcetracker

#
# List EC2 instances
echo "print list of Ec2 instances"
#aws ec2 describe-instances -  since this lists entire detail of instance we will use the below command
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourcetracker

# List aws lambda
echo "print list of lambda functions"
aws lambda list-functions >> resourcetracker

# List IAM users
echo "print list of IAM users"
aws iam list-users >> resourcetracker
