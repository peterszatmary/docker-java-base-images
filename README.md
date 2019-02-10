# docker-java-base-images

Dockerfile-s for java world.

-   **build-image/Dockerfile** : image for building java apps (Oracle java 8 + maven 3.6.0)
-   **run-image/Dockerfile** : image for running java apps (Oracle java 8 + prepared for different environments)

## Notes

- user psz so no root execution
- based on alpine so images are small
- prepared for different environments thanks to build-args
- run-image/Dockerfile uses another git project [app_props](https://github.com/peterszatmary/app_props)

## Result

-   one base build image for java applications
-   4 base images for running applications different because of environment.

## Result


### Build base image

```bash
cd build-image
sh build.sh
sh run.sh
```

### Run base image for dev env
```bash
cd run-image
sh build_dev.sh
sh run_dev.sh
```

### Run base image for sit env
```bash
cd run-image
sh build_sit.sh
sh run_sit.sh
```

### Run base image for cit env
```bash
cd run-image
sh build_cit.sh
sh run_cit.sh
```

### Run base image for prod env
```bash
cd run-image
sh build_prod.sh
sh run_prod.sh
```