# Overview:
Plexpy Is a Python-based Plex Usage tracker, that is currently in active development.

# Parameters:

* 8181 - Plexpy WebUI Port
* /config - Contains Plexpy config and database
* /downloads - Map this to Plex Media servers log directory - bonus points for mapping RO
* PGID for for GroupID - see below for explanation
* PUID for for UserID - see below for explanation
* TZ for timezone EG. Europe/London

### User / Group Identifiers

Sometimes when using data volumes, permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

## Accessing the application

Webui can be found at  `<your-ip>:8181`
