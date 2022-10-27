#!/bin/bash

aws ec2 create-vpc \
    --cidr-block "10.0.0.0/16" \
    --region "us-west-2" \
    --tag-specification "ResourceType=vpc, Tags=[{Key=name,Value=my-vpc}]" \
    --query Vpc.VpcId