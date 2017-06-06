# Redis

Redis is an open-source, networked, in-memory, key-value data store with optional durability. It is written in ANSI C. The development of Redis is sponsored by Redis Labs today; before that, it was sponsored by Pivotal and VMware. According to the monthly ranking by DB-Engines.com, Redis is the most popular key-value store. The name Redis means REmote DIctionary Server.

## Start with persistent storage

If persistence is enabled, data is stored in the VOLUME /data

## If you want to use your own redis.conf

Mount a proper config file to /usr/local/etc/redis/redis.conf in the container
