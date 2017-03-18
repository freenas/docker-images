[appurl]:https://github.com/google/cadvisor
[![cadvisor](https://raw.githubusercontent.com/google/cadvisor/master/logo.png)][appurl]

# cAdvisor - Container Advisor

cAdvisor (Container Advisor) provides container users an understanding of the resource usage and performance characteristics of their running containers. It is a running daemon that collects, aggregates, processes, and exports information about running containers. Specifically, for each container it keeps resource isolation parameters, historical resource usage, histograms of complete historical resource usage and network statistics. This data is exported by container and machine-wide.

cAdvisor has native support for [Docker](https://github.com/docker/docker) containers and should support just about any other container type out of the box. We strive for support across the board so feel free to open an issue if that is not the case. cAdvisor's container abstraction is based on [lmctfy](https://github.com/google/lmctfy)'s so containers are inherently nested hierarchically.


## Usage

### Volumes:

* Do not change the set of VM-mapped volumes. cAdvisor needs these to get docker data.

### Variables:

* `STORAGE_DRIVER=<driver>` The storage driver to use. See cAdvisor docs for details.
  * Examples: statsd, redis, influxdb, elasticsearch, kafka
* `STORAGE_HOST=<host>:<port>` The address of the storage service.
  * Example: 192.168.0.74:8125
* `STORAGE_DB_NAME=<name>` Namespace to store stats under. (Unused for some storage drivers)
  * Example: docker_host_0_cadvisor

### Ports:
* 8080:8080
