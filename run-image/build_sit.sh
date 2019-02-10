#!/usr/bin/env bash
docker build  -t run_base_image:sit_pp_1.0v --build-arg environment=sit --build-arg app=pp  .