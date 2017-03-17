[appurl]: http://en.wikipedia.org/wiki/Ghost_blogging_platform
[![ghost](https://raw.githubusercontent.com/docker-library/docs/c5b6d94dc8f0557925ab37ca43141c0efc5cc363/ghost/logo.png)][appurl]

# Ghost

Ghost is a free and open source blogging platform written in JavaScript and distributed under the MIT License, designed to simplify the process of online publishing for individual bloggers as well as online publications.

# How to use this image

By default, a Ghost instance will be launchd on the default Ghost port of 2368.

If you'd like to be able to access the instance from the host without the container's IP, standard port mappings can be used:

* `8080:2368`

Then, access it via `http://localhost:8080` or `http://host-ip:8080` in a browser.

You can also point the image to your existing content on your host:

* `/path/to/ghost/blog:/var/lib/ghost`

Alternatively you can use a [data container](http://docs.docker.com/engine/tutorials/dockervolumes/) that has a volume that points to `/var/lib/ghost` and then reference it

## Documentation

Documentation for this image is stored in the [`ghost/` directory](https://github.com/docker-library/docs/tree/master/ghost) of the [`docker-library/docs` GitHub repo](https://github.com/docker-library/docs). Be sure to familiarize yourself with the [repository's `README.md` file](https://github.com/docker-library/docs/blob/master/README.md) before attempting a pull request.
