#!/bin/bash

source .env
if [[ ! -z "$USE_CUSTOM_APACHE_USER" ]]
then
    APACHE_USER="$USE_CUSTOM_APACHE_USER"
fi

docker build -t newspack-dev-74 \
    --build-arg PHP_VERSION=7.4 \
    --build-arg COMPOSER_VERSION=2.1.14 \
    --build-arg NODE_VERSION=16.14.2 \
    --build-arg APACHE_RUN_USER="$APACHE_USER" \
    --build-arg PHPUNIT_VERSION=7.5.20 \
    .