#!/usr/bin/env bash

UUID="$(uuidgen)"

aws cloudformation create-stack --stack-name CAPSTONE-Infrastucture-$UUID --template-body file://Network/capstone_network.yml \
--parameters file://Network/capstone_network_parameter.json --region=eu-west-1

