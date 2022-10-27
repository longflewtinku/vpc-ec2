#!/bin/bash

aws ec2 run-instances \
    --image-id "ami-024c319d5d14b463e" \
    --tag-specification "ResourceType=instances,Tags=[{Key=Name,Value=public-instance-1}]" \
    --count "1" \
    --key-name "jenkina key" \
    --region "ap-south-1" \
    --security-group-ids "sg-0b97a5f1b8d7da3e3" \
    --instance-type "t2.micro" \
    --subnet-id "subnet-0999e0e982782fd01" \
    --associate-public-ip-address \
    --query "Instances[0].InstanceId"


