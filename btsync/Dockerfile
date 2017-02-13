FROM gfjardim/btsync:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=8888 \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="3838:3838/udp,5555:5555/tcp,8888:8888/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/config\",					\
              \"descr\": \"Config storage space\"			\
          }								\
      ]" 

