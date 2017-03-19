FROM kannix/monero-full-node:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.port-mappings="18080:18080/tcp,18081:18081/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/root/.bitmonero\",					\
              \"descr\": \"Configuration and blockchain\"			\
          }								\
      ]"
