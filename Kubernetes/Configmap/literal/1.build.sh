#!/bin/bash
docker_id="ketidevit2"
name="examplenode"

npm init -y
docker build -t $docker_id/$name:v0.0.1 . && \
docker push $docker_id/$name:v0.0.1