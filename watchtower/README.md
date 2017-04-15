# Watchtower

A process for watching your Docker containers and automatically restarting them whenever their base image is refreshed.

Requires volume on host /var/run/docker.sock to container /var/run/docker.sock  This is setup as a FreeNAS static-volume, so should 'just work'.

## Overview

Watchtower is an application that will monitor your running Docker containers and watch for changes to the images that those containers were originally started from. If watchtower detects that an image has changed, it will automatically restart the container using the new image.

With watchtower you can update the running version of your containerized app simply by pushing a new image to the Docker Hub or your own image registry. Watchtower will pull down your new image, gracefully shut down your existing container and restart it with the same options that were used when it was deployed initially.

For example, let's say you were running watchtower along with an instance of *centurylink/wetty-cli* image:

```bash
$ docker ps
CONTAINER ID   IMAGE                   STATUS          PORTS                    NAMES
967848166a45   centurylink/wetty-cli   Up 10 minutes   0.0.0.0:8080->3000/tcp   wetty
6cc4d2a9d1a5   v2tec/watchtower        Up 15 minutes                            watchtower
```

Every few mintutes watchtower will pull the latest *centurylink/wetty-cli* image and compare it to the one that was used to run the "wetty" container. If it sees that the image has changed it will stop/remove the "wetty" container and then restart it using the new image and the same `docker run` options that were used to start the container initially (in this case, that would include the `-p 8080:3000` port mapping).

### Arguments

By default, watchtower will monitor all containers running within the Docker daemon to which it is pointed (in most cases this will be the local Docker daemon, but you can override it with the `--host` option described in the next section). However, you can restrict watchtower to monitoring a subset of the running containers by specifying the container names as arguments when launching watchtower.

When no arguments are specified, watchtower will monitor all running containers.

### Options

Any of the options described below can be passed to the watchtower process by setting them after the image name in the `docker run` string:

* `--host, -h` Docker daemon socket to connect to. Defaults to "unix:///var/run/docker.sock" but can be pointed at a remote Docker host by specifying a TCP endpoint as "tcp://hostname:port". The host value can also be provided by setting the `DOCKER_HOST` environment variable.
* `--interval, -i` Poll interval (in seconds). This value controls how frequently watchtower will poll for new images. Defaults to 300 seconds (5 minutes).
* `--schedule, -s` [Cron expression](https://godoc.org/github.com/robfig/cron#hdr-CRON_Expression_Format) which defines when and how often to check for new images. Either `--interval` or the schedule expression could be defined, but not both.
* `--no-pull` Do not pull new images. When this flag is specified, watchtower will not attempt to pull new images from the registry. Instead it will only monitor the local image cache for changes. Use this option if you are building new images directly on the Docker host without pushing them to a registry.
* `--cleanup` Remove old images after updating. When this flag is specified, watchtower will remove the old image after restarting a container with a new image. Use this option to prevent the accumulation of orphaned images on your system as containers are updated.
* `--tlsverify` Use TLS when connecting to the Docker socket and verify the server's certificate.
* `--debug` Enable debug mode. When this option is specified you'll see more verbose logging in the watchtower log file.
* `--help` Show documentation about the supported flags.

## Linked Containers

Watchtower will detect if there are links between any of the running containers and ensure that things are stopped/started in a way that won't break any of the links. If an update is detected for one of the dependencies in a group of linked containers, watchtower will stop and start all of the containers in the correct order so that the application comes back up correctly.

For example, imagine you were running a *mysql* container and a *wordpress* container which had been linked to the *mysql* container. If watchtower were to detect that the *mysql* container required an update, it would first shut down the linked *wordpress* container followed by the *mysql* container. When restarting the containers it would handle *mysql* first and then *wordpress* to ensure that the link continued to work.

## Stopping Containers

When watchtower detects that a running container needs to be updated it will stop the container by sending it a SIGTERM signal.
If your container should be shutdown with a different signal you can communicate this to watchtower by setting a label named *com.centurylinklabs.watchtower.stop-signal* with the value of the desired signal.

## Updating Watchtower

If watchtower is monitoring the same Docker daemon under which the watchtower container itself is running (i.e. if you volume-mounted */var/run/docker.sock* into the watchtower container) then it has the ability to update itself. If a new version of the *v2tec/watchtower* image is pushed to the Docker Hub, your watchtower will pull down the new image and restart itself automatically.
