FROM postgres:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="9.6" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.port-mappings="5432:5432/tcp" \
      org.freenas.settings="[                             \
          {                                               \
              \"env\": \"POSTGRES_PASSWORD\",             \
              \"descr\": \"Admin password\",              \
              \"optional\": true                          \
          },                                              \
          {                                               \
              \"env\": \"POSTGRES_USER\",                 \
              \"descr\": \"Admin User\",                  \
              \"optional\": true                          \
          },                                              \
          {                                               \
              \"env\": \"PGDATA\",                        \
              \"descr\": \"Optional database subdirectory\",\
              \"optional\": true                          \
          },                                              \
          {                                               \
              \"env\": \"POSTGRES_DB\",                   \
              \"descr\": \"Optional Database name\",      \
              \"optional\": true                          \
          },                                              \
          {                                               \
              \"env\": \"POSTGRES_INITDB_ARGS\",          \
              \"descr\": \"Optional Database args\",      \
              \"optional\": true                          \
          }                                               \
      ]"
