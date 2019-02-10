#!/usr/bin/env bash
docker build  -t run_base_image:prod_pp_1.0v --build-arg environment=prod --build-arg app=pp  .