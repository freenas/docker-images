# mineos

Docker container image based on yujiod/docker-mineos

Dockerfile for creating Mine OS server image. Extended with `password` FreeNAS environmental variable.

[Mine OS - easy minecraft hosting solution](http://minecraft.codeemo.com/)

## Usage

    docker run -d yujiod/minecraft-mineos
    docker run -d -p 8443:8443 -p 25565:25565 yujiod/minecraft-mineos

The WebUI on 8443 port with self signed SSL. When binding to 8443, open below URL.

http://<hostname>:8443/

Login username is `minecraft`. Password is auto generated. Please check password in logs.

    docker logs <container_id>

You can also specify a password on run the container. The environment variable is `PASSWORD`.

    docker run -d -e PASSWORD=cr33p3r yujiod/minecraft-mineos

## SSH Access

The server can access to SSH by `minecraft` user, port 22.

    docker run -d -e PASSWORD=cr33p3r -p 2222:22 -p 8443:8443 -p 25565:25565 yujiod/minecraft-mineos
    ssh minecraft@<hostname> -p 2222

The password is automatically generated, or you specified in the container startup.

### Mount minecraft data volume

The mount point is `/var/games/minecraft`.

    docker run -d -v /var/games/minecraft yujiod/minecraft-mineos 

### Multiple minecraft server port binding

    docker run -d -e PASSWORD=cr33p3r -v /var/games/minecraft -p 2222:22 -p 8443:443 \
    -p 25565:25565 -p 25566:25566 -p 25567:25567 -p 25568:25568 -p 25569:25569 -p 25570:25570 \
    yujiod/minecraft-mineos 