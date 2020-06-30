#!/bin/bash

source .env

aws ecr get-login-password --region ${AWS_DEFAULT_REGION} | docker login --username AWS --password-stdin ${AWS_ECR}
docker build  \
    -t ${APP_NAME} \
    --build-arg TRAVIS_BUILD_NUMBER=${TRAVIS_BUILD_NUMBER} \
    --build-arg TRAVIS_COMMIT=${TRAVIS_COMMIT} \
    -f docker/Dockerfile . ;
docker tag ${APP_NAME}:latest ${ECR_REPO}:${TRAVIS_BUILD_NUMBER}
docker push ${ECR_REPO}:${TRAVIS_BUILD_NUMBER}
