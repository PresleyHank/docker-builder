#!/bin/bash

ver="1.3.2"

tar -C /usr/local -xzf "${DOCKER_SRC}/elasticsearch-${ver}.tar.gz" || exit $?

