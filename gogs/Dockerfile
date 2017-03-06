FROM gogs/gogs:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="2" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=10080 \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="3000:10080/tcp,22:10020/tcp" \
      org.freenas.volumes="[						                              \
          {								                                    \
              \"name\": \"/data/\",					                        \
              \"descr\": \"Gogs data directory\"		                        \
          }   \
       ]"
