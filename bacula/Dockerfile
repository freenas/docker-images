FROM itherz/bacula:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.port-mappings="9101:9101/udp,9103:9103/udp,9101:9101/tcp,9103:9103/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/etc/bacula\",				\
              \"descr\": \"Config storage space\"			\
          },								\
          {								\
              \"name\": \"/bacula\",					\
              \"descr\": \"Main Bacula directory\"			\
          }								\
      ]"

