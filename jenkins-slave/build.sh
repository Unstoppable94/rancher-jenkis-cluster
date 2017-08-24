#!/bin/bash

# $IMAGE_NAME var is injected into the build so the tag is correct.

echo "Build hook running"
docker build --build-arg releas_server=http://192.168.101.93:8080 \
  -t 10.0.2.50/wh-cicd/jenkis-slave .

# --build-arg build_date=$(date -u +"%Y-%m-%dT%H:%M:%SZ") \
# --build-arg version=$(git describe --tags) \
  