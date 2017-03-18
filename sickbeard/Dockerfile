FROM timhaak/sickbeard:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="2" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="8081" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8081:8081/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/config\",					\
              \"descr\": \"Database and Sickbeard configs\"		\
          },								\
          {								\
              \"name\": \"/data\",					\
              \"descr\": \"Sickbeard data volume\"			\
          }								\
      ]" 

