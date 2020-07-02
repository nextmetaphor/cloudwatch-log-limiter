#!/usr/bin/env bash

# stop execution if any commands fail
set -e -o pipefail

# set the region
export AWS_DEFAULT_REGION="us-east-1"

# assume this has been done beforehand
# aws configure

# set the region
export AWS_DEFAULT_REGION="us-east-1"

terraform init
terraform fmt
terraform validate

terraform plan -out=tfplan

terraform apply tfplan
terraform show