#!/bin/bash
docker buildx build --platform linux/amd64,linux/arm64 --tag marcoshssilva/ubuntu-with-tools:latest --no-cache .