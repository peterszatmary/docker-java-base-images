#!/usr/bin/env bash
docker build  -t run_base_image:cit_pp_1.0v --build-arg environment=cit --build-arg app=pp  .