# Build Heka in Docker


Create RPMs, debs, or binaries of Heka with your own plugins using Docker.

## How
```
docker run -ti -v $PWD/output:/output cruatta/docker-heka-build
```

## What about custom plugins?
* Clone this repo

* Add any external plugins you want to compile into heka into plugin_loader.cmake

* Build and run the container from the cloned repository

```
docker build --rm=true -t cruatta/docker-heka-build:latest .

docker run -ti -v $PWD/output:/output cruatta/docker-heka-build
```

* Your artifacts will be in ./output

## FAQs

### Is it good?

Maybe

