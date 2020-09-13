#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
 dockerpath=kshanuanand/predictor

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
echo 'R3QxNXRvMTlHdWl0YXIkCg==' | base64 --decode | docker login -u kshanuanand --password-stdin
docker tag kshanuanand/predictor:0.1 kshanuanand/predictor-udacity:0.1
# Step 3:
# Push image to a docker repository
docker push kshanuanand/predictor-udacity:0.1
