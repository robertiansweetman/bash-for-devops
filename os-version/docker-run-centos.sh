#! /bin/bash

docker run -it --name os-version-centos -v "${PWD}"/os-version.sh:/tmp/os-version.sh --entrypoint "/bin/bash" centos:latest ./tmp/os-version.sh