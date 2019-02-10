#!/usr/bin/env bash
docker build  -t run_base_image:dev_pp_1.0v --build-arg environment=dev --build-arg app=pp  .