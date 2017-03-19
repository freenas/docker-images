# Resilio Sync - Replacement for BTSync

Resilio Sync, formerly BitTorrent Sync, uses the BitTorrent protocol to sync files and folders between all of your devices. There are both free and paid versions, this container supports both.

There is an official sync image but the linuxserver team created this one as it supports user mapping to simplify permissions for volumes.

## Parameters

* `55555` - port required to access the app
* `8888` - port required to access the app
* `/config` - contains the settings
* `/sync` - sync folders root
* `PGID` for GroupID - see below for explanation
* `PUID` for UserID - see below for explanation

### User / Group Identifiers

Sometimes when using data volumes permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

## Setting up the application

You can add additional folders as well under the /sync folder as required i.e. mapping a dataset to /sync/<folder1> and another dataset to /sync/<folder2>

* Webui is at `<your-ip>:8888`, for account creation and configuration.
