#!/bin/sh

kubectl create secret -n ${NAMESPACE} docker-registry ${SECRET_NAME} \
    --docker-server=https://${ACCOUNT}.dkr.ecr.${REGION}.amazonaws.com \
    --docker-username=AWS \
    --docker-password="${TOKEN}" \
    --docker-email="${EMAIL}"
