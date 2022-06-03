#!/usr/bin/env sh

# Add the helm repo
helm repo add otomount https://otomato-gh.github.io/s3-mounter
# Inspect its arguments
helm show values otomount/s3-otomount

# Install the chart
helm upgrade --install s3-mounter otomount/s3-otomount \
--namespace tensorflow --set bucketName=langhae-20220525 \
--set iamRoleARN=arn:aws:iam::940168446867:role/multi05-eks-terraform-my-s3-role --create-namespace

# deploy tensorflow
kubectl apply -k ../manifest/