#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=harishbabua/proj4api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

sudo docker tag proj4api:latest harishbabua/udacity:proj4api

sudo docker login -u harishbabua --password-stdin
# Step 3:
# Push image to a docker repository

sudo docker push harishbabua/udacity:proj4api