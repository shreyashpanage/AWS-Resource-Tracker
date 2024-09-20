#!/bin/bash
##################################################################################################
#Author       - Shreyash
#Date         - 14/09/2024
#Description  - This shellscript will output the resources working at AWS console
#Version      - v1
##################################################################################################

echo " "

echo "AWS EC2 Instance Id's :"
aws ec2 describe-instances|jq ".Reservations[].Instances[].InstanceId"

echo " "
echo "-----------------------------------------------------------------------------------------------"
echo " "

echo "AWS S3 Bucket lists"
aws s3 ls

echo " "
echo "-----------------------------------------------------------------------------------------------"
echo " "

echo "AWS IAM users"
aws iam list-users

echo " "
echo "-----------------------------------------------------------------------------------------------"
echo " "

echo "AWS RDS db Instances"
aws rds describe-db-instances

echo " "
echo "-----------------------------------------------------------------------------------------------"
echo " "
