#!/usr/bin/env bash

UUID="$(uuidgen)"

aws cloudformation create-stack --stack-name CAPSTONE-DEPLOY-$UUID --template-body file://DeployApp/capstone_infra.yml \
--parameters file://DeployApp/capstone_infra_parameter.json --region=eu-west-1

