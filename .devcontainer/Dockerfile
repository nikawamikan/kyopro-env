FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update && \
    apt-get install -y git time libboost-all-dev python3-pip sl nodejs npm && \
    apt-get clean && npm install -g atcoder-cli 
