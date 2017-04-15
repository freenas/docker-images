FROM neo4j:latest
LABEL org.freenas.interactive="false"                     \
      org.freenas.version="3.1.2"                        \
      org.freenas.upgradeable="false"                     \
      org.freenas.expose-ports-at-host="true"             \
      org.freenas.autostart="true"                        \
      org.freenas.port-mappings="7474:7474/tcp,7473:7473/tcp,7687:7687/tcp"           \
      org.freenas.volumes="[                              \
          {                                               \
              \"name\": \"/data\",               \
              \"descr\": \"Database storage\"             \
          }                                               \
      ]"                                                  \
      org.freenas.web-ui-protocol="http"	\
      org.freenas.web-ui-port=7474     \
      org.freenas.web-ui-path=""                                        \


