#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
sudo docker build -t kshanuanand/predictor:0.1 .
# Step 2: 
# List docker images
sudo docker image ls
# Step 3: 
# Run flask app
sudo docker run --rm -d kshanuanand/predictor:0.1  -p 8000:80
