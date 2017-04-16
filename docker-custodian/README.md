## Docker Custodian

## yelp/docker-custodian

Keep docker hosts tidy.

Requires VM volume /var/run/docker.sock to Container /var/run/docker.sock

## Usage

## Remove old docker containers and docker images.

```
dcgc will remove stopped containers and unused images that are older than "max age". Running containers, and images which are used by a container are never removed.

Maximum age can be specificied with any format supported by pytimeparse.

Example:

dcgc --max-container-age 3days --max-image-age 30days

## Prevent images from being removed
```

```
dcgc supports an image exclude list. If you have images that you'd like to keep around forever you can use the exclude list to prevent them from being removed.

--exclude-image
    Never remove images with this tag. May be specified more than once.

--exclude-image-file
    Path to a file which contains a list of images to exclude, one
    image tag per line.
You also can use basic pattern matching to exclude images with generic tags.

user/repositoryA:*
user/repositoryB:?.?
user/repositoryC-*:tag

## dcstop

```
Stop containers that have been running for too long.

dcstop will docker stop containers where the container name starts with --prefix and it has been running for longer than --max-run-time.

Example:

dcstop --max-run-time 2days --prefix "projectprefix_"
```
