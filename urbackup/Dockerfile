FROM axemann/urb-docker:latest

LABEL org.freenas.interactive="false" \
      org.freenas.version="2.1.19" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="55414" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="35623:35623/udp,55413:55413/tcp,55414:55414/tcp,55415:55415/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/var/urbackup\",				\
              \"descr\": \"Config storage location\"			\
          },                                                           \
          {                                                            \
              \"name\": \"/backup\",					\
              \"descr\": \"Backup storage location\"			\
          },                                                           \
          {                                                            \
              \"name\": \"/var/log\",					\
              \"descr\": \"Log storage location\"			\
          }								\
      ]"
