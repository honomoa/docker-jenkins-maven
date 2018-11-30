#!/bin/sh

MAVEN_VERSION=${1:-3.6.0}

docker build \
  --build-arg MAVEN_VERSION=${MAVEN_VERSION} \
  -t honomoa/jenkins-maven:${MAVEN_VERSION}-alpine \
  .
