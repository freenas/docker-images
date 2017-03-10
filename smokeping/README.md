# Overview:
Smokeping keeps track of your network latency.

# Parameters:

* 8080 - Smokeping WebUI Port
* /data - Storage location for db and application data (graphs etc)
* /config - Configure the Targets file here
* PGID for for GroupID - see below for explanation
* PUID for for UserID - see below for explanation
* TZ for timezone EG. Europe/London

### User / Group Identifiers

Sometimes when using data volumes, permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

## Accessing the application

WebUI can be found at  `http://<your-ip>:8080/smokeping/smokeping.cgi`
