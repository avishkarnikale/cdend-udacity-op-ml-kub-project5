#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
sudo docker build --tag=cdend-uda-avish-proj5 .
# Step 2: 
# List docker images
sudo docker image ls
# Run flask app
sudo docker run -p 8080:80 cdend-uda-avish-proj5


