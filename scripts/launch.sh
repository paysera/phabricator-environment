#!/usr/bin/env bash

# Config
GIT_BIN_DIRECTORY=/usr/bin
DOCKER_BIN_DIRECTORY=/usr/bin
DOCKER_COMPOSER_BIN_DIRECTORY=/usr/local/bin

# Load local config
if [ -e ".local" ]; then
    source .local
fi

# Run
if [[ "${1}" == "update" ]]; then
    ${DOCKER_COMPOSER_BIN_DIRECTORY}/docker-compose pull
    ${DOCKER_COMPOSER_BIN_DIRECTORY}/docker-compose up -d --force-recreate
else
    ${DOCKER_COMPOSER_BIN_DIRECTORY}/docker-compose up -d
fi

# Custom setup
if [ -e "scripts/custom.sh" ]; then
    source scripts/custom.sh
fi
