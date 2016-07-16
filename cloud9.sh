#!/bin/bash

export CANONICAL=${1} &&
export ORIGIN=${2} &&
docker-compose up -d &&
docker-compose ps &&
true