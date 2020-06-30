#!/bin/bash

source .env

aws cloudformation create-stack \
    --stack-name ${STACK_NAME} \
    --template-body ${TEMPLATE_BODY} \
    --capabilities CAPABILITY_IAM \
    --parameters \
        ParameterKey=HostedZoneId,ParameterValue=${HOSTED_ZONE_ID} \
        ParameterKey=DomainName,ParameterValue=${DOMAIN_NAME} ;

exit $?