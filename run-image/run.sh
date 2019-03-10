#!/usr/bin/env bash
ENV=${1}
VERSION=${2}
docker run -ti run_base_image:${ENV}_pp_${VERSION}