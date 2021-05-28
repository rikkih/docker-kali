#!/bin/bash

set -e

docker-compose build --build-arg kali_root_pwd=${KALI_ROOT_PWD}
docker-compose run kali

