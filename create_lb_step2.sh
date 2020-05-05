#!/usr/bin/env bash

UUID="$(uuidgen)"

aws cloudformation create-stack --stack-name CAPSTONE-LoadBalancer-$UUID --template-body file://LoadBalancer/capstone_load_balancer.yml \
--parameters file://LoadBalancer/capstone_lb_parameter.json --region=eu-west-1

