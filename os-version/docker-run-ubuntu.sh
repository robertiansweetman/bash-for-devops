#! /bin/bash

docker run -d --name os-version-ubuntu -v "${PWD}"/os-version.sh:/tmp/os-version.sh --entrypoint "/bin/bash" ubuntu:latest ./tmp/os-version.sh