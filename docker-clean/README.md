# Docker-Clean

zzrot/docker-clean

A simple Shell script to clean up the Docker Daemon.

## Requirements

Volume mount on the VM /var/run/docker.sock to Container /var/run/docker.sock

## Usage

For a more in depth look at the usage and commands run without browsing the script itself check out our [USAGE.md](https://github.com/ZZROTDesign/docker-clean/blob/master/USAGE.md).

    docker-clean [optional flags below]

  Default without arguments deletes stopped containers, dangling volumes, and untagged images.

      stop         Stops and removes all containers, cleans dangling volumes, and networks

      images       Removes all tagged and untagged images, stopped containers, dangling volumes, and networks

      run          Removes all stopped containers, untagged images, dangling volumes, and networks

      all          Stops and removes all containers, images, volumes and networks


     "Additional Flag options:"

     -n   or --dry-run    Adding this additional flag will list items to be
                          removed without executing any stopping or removing commands"

     -s   or --stop       Stops all running containers

    -c   or --containers  Removes all stopped containers

    -i   or --images      Removes all untagged images

    -net or --networks    Removes all empty Networks (all network cleans are only empty)

    -H   or --host        Specifies the docker host to run against
	                      Useful for docker swarm maintenance ie: -H 127.0.0.1:4000"

     -r   or --restart     Restarts the docker machine/daemon

     -d   or --created     By default, CREATED containers are set to be removed.  Adding this
                           flag will ensure that all created containers are not cleaned

     -t   or --tagged      Removes all tagged images

     -a   or --all         Stops and removes all Containers, Images, AND Restarts docker

     -l   or --log         Adding this as an additional flag will list all
                           image, volume, and container deleting output

## License

The code is available under the [MIT License](/LICENSE).
