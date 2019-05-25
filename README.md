# Docker NGINX Unit image

### Tags
As of 1.x, docker image tags correspond to [NGINX Unit versions](https://unit.nginx.org/CHANGES.txt)

### What is this?
Based on [alpine](https://hub.docker.com/_/alpine/) linux this is the smallest so far installation of [NGINX Unit](https://www.nginx.com/products/nginx-unit/) since most of them use precompiled packages for CentOS, Ubuntu or Debian. You can use it separately but it's developed primarily for faster extending with "units": php, go and python. Check its child images:

* vladkras/nginx-unit-php7

### Usage
`docker run -d vladkras/nginx-unit-base`

that's it, Now you can play around with NGINX Unit

`docker exec -it <container> sh`

This image contains `DESTDIR=/opt/unit/` env variable. Don't change it unless you exactly know what you're doing! Source code necessary for further setup is located in `/unit` directory under root.

### Docs

[Configuration](https://unit.nginx.org/configuration/)

### License
This Docker image is licensed under the [MIT License](https://github.com/vladkras/nginx-unit-base/blob/master/LICENSE)

[NGINX Unit](https://github.com/nginx/unit) is licensed under the [Apache License 2.0](https://github.com/nginx/unit/blob/master/LICENSE)

### Docker
[vladkras/nginx-unit-base](https://hub.docker.com/r/vladkras/nginx-unit-base/) @ Docker Hub
