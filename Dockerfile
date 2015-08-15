############################################################
# Dockerfile that builds a new Jenkins image based on the
# official jenkins' docker release. This is built on top of
# debian:jessie
############################################################
FROM jenkins:latest

USER root
RUN apt-get update && apt-get install -y docker.io maven ruby netcat

# Install JQ json parser
ADD http://stedolan.github.io/jq/download/linux64/jq /usr/bin/jq
