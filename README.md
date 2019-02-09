# docker-java-base-images

Dockerfile-s for java world.

-   **build-image/Dockerfile** : image for building java apps (Oracle java 8 + maven 3.6.0)
-   **run-image/Dockerfile** : image for running java apps (Oracle java 8 + prepared for different environments)

## Notes

- user psz so no root execution
- based on alpine so images are small
- prepared for different environments thanks to build-args
- run-image/Dockerfile uses another git project [app_props](https://github.com/peterszatmary/app_props)

## TODO

- run them