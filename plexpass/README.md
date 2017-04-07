# Official Docker container for Plex Media Server (with plexpass)

[appurl]: https://plex.tv
[![plex](http://the-gadgeteer.com/wp-content/uploads/2015/10/plex-logo-e1446990678679.png)][appurl]

# plexinc/pms-docker:plexpass

With our easy-to-install Plex Media Server software and your Plex apps, available on all your favorite phones, tablets, streaming devices, gaming consoles, and smart TVs, you can stream your video, music, and photo collections any time, anywhere, to any device.

## Updates

Using the docker tag plexpass enables this docker to update to the latest version during a restart. This image will dowoload and unpack the latest version of the pms-docker using the plexpass update train.  

## Usage

Before you create your container, you must decide on the type of networking you wish to use.  There are essentially three types of networking available:

- `bridge` (default)
- `host`
- `macvlan`

The `bridge` networking creates an entirely new network within the host and runs containers within there.  This network is connected to the physical network via an internal router and docker configures this router to forward certain ports through to the containers within.  The `host` networking uses the IP address of the host running docker such that a container's networking appears to be the host rather than separate.  The `macvlan` networking creates a new virtual computer on the network which is the container.  For purposes of setting up a plex container, the `host` and `macvlan` are very similar in configuration.

Using `host` or `macvlan` is the easier of the three setups and has the fewest issues that need to be worked around.  However, some setups may be restricted to only running in the `bridge` mode.  Plex can be made to work in this mode, but it is more complicated.

- If you wish your Plex Media Server to be accessible outside of your home network, you must manually setup port forwarding on your router to forward to the `ADVERTISE_IP` parameters using bridged networking.  By default you can forward port 32400, but if you choose to use a different external port, be sure you configure this in Plex Media Server's `Remote Access` settings.  With this type of docker networking, the Plex Media Server is essentially behind two routers and it cannot automatically setup port forwarding on its own.

- (Plex Pass only) After the server has been set up, you should configure the `LAN Networks` preference to contain the network of your LAN.  This instructs the Plex Media Server to treat these IP addresses as part of your LAN when applying bandwidth controls.  The syntax is the same as the `ALLOWED_NETWORKS` below.  For example `192.168.1.0/24,172.16.0.0/16` will allow access to the entire `192.168.1.x` range and the `172.16.x.x` range.

## Parameters

- `32400:32400/tcp` Forwards port 32400 from the host to the container.  This is the primary port that Plex uses for communication and is required for Plex Media Server to operate.
- `…` Forwards complete set of other ports used by Plex to the container.  For a full explanation of which you may need, please see the help article: [https://support.plex.tv/hc/en-us/articles/201543147-What-network-ports-do-I-need-to-allow-through-my-firewall](https://support.plex.tv/hc/en-us/articles/201543147-What-network-ports-do-I-need-to-allow-through-my-firewall)
- `<path/to/plex/database>:/config` The path where you wish Plex Media Server to store its configuration data.  This database can grow to be quite large depending on the size of your media collection.  This is usually a few GB but for large libraries or libraries where index files are generated, this can easily hit the 100s of GBs.  If you have an existing database directory see the section below on the directory setup. (Note that the underlying filesystem needs to support file locking. Known to not be default enabled on remote filesystems like NFS)
- `<path/to/transcode/temp>:/transcode` The path where you would like Plex Media Server to store its transcoder temp files.  If not provided, the storage space within the container will be used.  Expect sizes in the 10s of GB.
- `<path/to/media>:/data` This is provided as examples for providing media into the container.  The exact structure of how the media is organized and presented inside the container is a matter of user preference.  You can use as many or as few of these parameters as required to provide your media to the container.
- `KEY="value"` These are environment variables which configure the container.  See below for a description of their meanings.

The following are the recommended parameters.  Each of the following parameters to the container are treated as first-run parameters only.  That is, all other paraters are ignored on subsequent runs of the server.  We recommend that you set the following parameters:

- **TZ** Set the timezone inside the container.  For example: `Europe/London`.  The complete list can be found here: [https://en.wikipedia.org/wiki/List_of_tz_database_time_zones](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones)
- **PLEX_CLAIM** The claim token for the server to obtain a real server token.  If not provided, server is will not be automatically logged in.  If server is already logged in, this parameter is ignored.  You can obtain a claim token to login your server to your plex account by visiting [https://www.plex.tv/claim](https://www.plex.tv/claim)
- **ADVERTISE_IP** This variable defines the additional IPs on which the server may be be found.  For example: `http://10.1.1.23:32400`.  This adds to the list where the server advertises that it can be found.  This is only needed in Bridge Networking.

These parameters are usually not required but some special setups may benefit from their use.  As in the previous section, each is treated as first-run parameters only:

- **PLEX_UID** The user id of the `plex` user created inside the container.
- **PLEX_GID** The group id of the `plex` group created inside the container
- **CHANGE_CONFIG_DIR_OWNERSHIP** Change ownership of config directory to the plex user.  Defaults to `true`.  If you are certain permissions are already set such that the `plex` user within the container can read/write data in it's config directory, you can set this to `false` to speed up the first run of the container.
- **ALLOWED_NETWORKS** IP/netmask entries which allow access to the server without requiring authorization.  We recommend you set this only if you do not sign in your server.  For example `192.168.1.0/24,172.16.0.0/16` will allow access to the entire `192.168.1.x` range and the `172.16.x.x` range.  Note: If you are using Bridge networking, then localhost will appear to plex as coming from the docker networking gateway which is often `172.16.0.1`.

## Users/Groups
Permissions of mounted media outside the container do apply to the Plex Media Server running within the container.  As stated above, the Plex Media Server runs as a specially created `plex` user within the container.  This user may not exist outside the container and so the `PLEX_UID` and `PLEX_GID` parameters are used to set the user id and group id of this user within the container.

## Config Directory
Inside the docker container, the database is stored with a `Library/Application Support/Plex Media Server` in the `config` directory.

If you wish to migrate an existing directory to the docker config directory:

- Locate the current config directory as directed here: [https://support.plex.tv/hc/en-us/articles/202915258-Where-is-the-Plex-Media-Server-data-directory-located-](https://support.plex.tv/hc/en-us/articles/202915258-Where-is-the-Plex-Media-Server-data-directory-located-)
- If the config dir is stored in a location such as `/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/`, the config dir will be `/var/lib/plexmediaserver`.
- If the config dir does not contain `Library/Application Support/Plex Media Server/` or the directory containing `Library` has data unrelated to Plex, such as OS X, then you should:
  - Create a new directory which will be your new config dir.
  - Within that config dir, create the directories `Library/Application Support`
  - Copy `Plex Media Server` into that `Library/Application Support`
- Note: by default Plex will claim ownership of the entire contents of the `config` dir (see CHANGE_CONFIG_DIR_OWNERSHIP for more information).  As such, there should be nothing in that dir that you do not wish for Plex to own.
