# Freenas Gitlab Image

It is recommended to use bridged networking on this container, if you are exposing ports instead the omnibus config will need
to be changed to reflect the new ports to be used.

This image is able to automatically migrate from one version of gitalb to another by simply starting the container with the new version using the same volumes.

Everything after this line is from the offical docker image's README.

# Official GitLab Docker images

* The official GitLab Community Edition Docker image is [available on Docker Hub](https://hub.docker.com/r/gitlab/gitlab-ce/).
* The official GitLab Enterprise Edition Docker image is [available on Docker Hub](https://hub.docker.com/r/gitlab/gitlab-ee/).
* The complete usage guide can be found in [Using GitLab Docker images](https://docs.gitlab.com/omnibus/docker/)
* The Dockerfile used for building public images is in [Omnibus Repository](https://gitlab.com/gitlab-org/omnibus-gitlab/tree/master/docker)
* Check the guide for [creating Omnibus-based Docker Image](https://docs.gitlab.com/omnibus/build/README.html#build-docker-image)

