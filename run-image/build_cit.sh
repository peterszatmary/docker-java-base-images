#!/usr/bin/env bash
# app         : any name
# environment : dev / sit / cit / prod
docker build  -t run_base_image:cit_pp_1.0v --build-arg environment=cit --build-arg app=pp  .