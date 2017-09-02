FROM amacneil/bitcoin:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="Latest (Auto Update)" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.capabilities-add="NET_BROADCAST"
      org.freenas.port-mappings="8332:8332/tcp,8333:8333/tcp,18332:18332/tcp,18333:18333/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/data\",					\
              \"descr\": \"Configuration volume\"			\
          },								\
      ]" 

