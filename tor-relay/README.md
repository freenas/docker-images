# Dockerized Tor Relay server with FreeNAS metadata

A simple Docker container for running a Tor relay server.
The container is also configured to listen on port 9001 for the relay traffic. Make sure to open the in your firewall.

### Required configuration

#### Give your node a nickname

It recommended that you provide a Nickname. You can do this using the following flag.

    -e 'NICKNAME=MyTorRelay' \

#### Set your node type

You can set your node type by changing the torrc file.
There are 3 configuration, Bridge Exit and Middle Node.

    -e 'TORRC=/etc/tor/torrc.middle' \
    -e 'TORRC=/etc/tor/torrc.bridge' \
    -e 'TORRC=/etc/tor/torrc.exit' \

### Recommended additional flags

#### Configure contact info

It is also recommended that you provide your contact information. This is mostly used for contact information in case there is something wrong with your node.

    -e 'CONTACTINFO=John Smith <jsmith@example.com>' \

#### Use persistant storage

Since Tor relies on keys on saved keys on disk for establishing trust, it is a good idea to use a volume to store your tor keys on the host (since Docker containers are ephemeral by nature).
