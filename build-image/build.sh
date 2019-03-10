#!/usr/bin/env bash
VERSION=${1}
docker build -t build_base_image:${VERSION} .