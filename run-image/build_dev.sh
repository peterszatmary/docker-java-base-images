#!/usr/bin/env bash
# app         : any name
# environment : dev / sit / cit / prod
docker build  -t run_base_image:dev_pp_1.0v --build-arg environment=dev --build-arg app=pp  .