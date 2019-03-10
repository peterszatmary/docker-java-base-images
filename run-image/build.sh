#!/usr/bin/env bash
ENV=${1}
VERSION=${2}
docker build -t run_base_image:${ENV}_pp_${VERSION} --build-arg environment=${ENV} --build-arg app=pp  .