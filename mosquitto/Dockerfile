FROM eclipse-mosquitto:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.port-mappings="1883:1883/tcp,9001:9001/tcp" \
      org.freenas.volumes="[ \
          { \
              \"name\": \"/mosquitto/config\", \
              \"descr\": \"Configuration files\" \
          },  \
          { \
              \"name\": \"/mosquitto/data\", \
              \"descr\": \"Data\" \
          },  \
          { \
              \"name\": \"/mosquitto/log\", \
              \"descr\": \"Logs\" \
          }  \
      ]" \
      org.freenas.settings=""
