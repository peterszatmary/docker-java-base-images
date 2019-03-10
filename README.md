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

## How to use images in Dockerfile or pull them

-   [java_build_base](https://quay.io/repository/peterszatmary/java_build_base)
-   [java_run_base](https://quay.io/repository/peterszatmary/java_run_base)

## Result


### Build base image

```bash
$ cd build-image
$ sh build.sh 1.0v
$ sh run.sh 1.0v
```

### Run base image for dev env
```bash
$ cd run-image
$ sh build.sh dev 1.0v
$ sh run.sh dev 1.0v
```

### Run base image for sit env
```bash
$ cd run-image
$ sh build.sh sit 1.0v
$ sh run.sh sit 1.0v
```

### Run base image for cit env
```bash
$ cd run-image
$ sh build.sh cit 1.0v
$ sh run.sh cit 1.0v
```

### Run base image for prod env
```bash
$ cd run-image
$ sh build.sh prod 1.0v
$ sh run.sh prod 1.0v
```