FROM wekanteam/wekan:meteor-1.4
LABEL org.freenas.interactive="false"\
      org.freenas.version="1.4"\
      org.freenas.upgradeable="false"\
      org.freenas.expose-ports-at-host="true"\
      org.freenas.autostart="true"\
      org.freenas.web-ui-protocol="http"\
      org.freenas.web-ui-port=8280\
      org.freenas.port-mappings="8280:80/tcp"\
      org.freenas.settings="[\
          {\
              \"env\": \"MONGO_URL\",\
              \"descr\": \"mongodb://myMongoDbIPorFQDN\",\
              \"optional\": false\
          },\
          {\
              \"env\": \"ROOT_URL\",\
              \"descr\": \"URL that this container will be accessed on, including port\",\
              \"optional\": false\
          }\
      ]"
