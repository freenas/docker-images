FROM jrcs/crashplan:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version=1 \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=4242 \
      org.freenas.web-ui-path="/web" \
      org.freenas.port-mappings="4242:4242/tcp,4243:4243/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/var/crashplan\",				\
              \"descr\": \"Config storage space\"			\
          },								\
          {								\
              \"name\": \"/storage\",					\
              \"descr\": \"Storage volume\"				\
          }								\
      ]" 

