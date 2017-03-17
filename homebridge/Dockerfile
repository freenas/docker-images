FROM marcoraddatz/homebridge

LABEL org.freenas.interactive="false" \
      org.freenas.version="1.01" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.port-mappings="5353:5353/udp,51826:51826/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/root/.homebridge\",				\
              \"descr\": \"Config storage location\"			\
          }								\
      ]"

EXPOSE 5353/udp 51826/tcp