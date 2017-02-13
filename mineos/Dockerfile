FROM yujiod/minecraft-mineos:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.port-mappings="8443:8443/tcp,25565:25565/tcp" \
      org.freenas.settings="[						\
          {								\
              \"env\": \"PASSWORD\",					\
              \"descr\": \"Server password\",				\
              \"optional\": false					\
          }								\
      ]"
