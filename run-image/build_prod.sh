#!/usr/bin/env bash
# app         : any name
# environment : dev / sit / cit / prod
docker build  -t run_base_image:prod_pp_1.0v --build-arg environment=prod --build-arg app=pp  .