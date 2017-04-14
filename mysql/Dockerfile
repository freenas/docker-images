FROM mysql:latest
LABEL org.freenas.interactive="false"                     \
      org.freenas.version="5.7.18"                        \
      org.freenas.upgradeable="false"                     \
      org.freenas.expose-ports-at-host="true"             \
      org.freenas.autostart="true"                        \
      org.freenas.port-mappings="3306:3306/tcp"           \
      org.freenas.volumes="[                              \
          {                                               \
              \"name\": \"/var/lib/mysql\",               \
              \"descr\": \"Database storage\"             \
          }                                               \
      ]"                                                  \
      org.freenas.settings="[                             \
          {                                               \
              \"env\": \"MYSQL_ROOT_PASSWORD\",           \
              \"descr\": \"Root password\",               \
              \"optional\": false                         \
          },                                              \
          {                                               \
              \"env\": \"MYSQL_DATABASE\",                \
              \"descr\": \"Database Name\",               \
              \"optional\": true                          \
          },                                              \
          {                                               \
              \"env\": \"MYSQL_USER\",                    \
              \"descr\": \"Optional Admin User\",         \
              \"optional\": true                          \
          },                                              \
          {                                               \
              \"env\": \"MYSQL_PASSWORD\",                \
              \"descr\": \"Optional Admin User password\",\
              \"optional\": true                          \
          },                                              \
          {                                               \
              \"env\": \"MYSQL_ALLOW_EMPTY_PASSWORD\",    \
              \"descr\": \"Allow no root password\",      \
              \"optional\": true                          \
          }                                               \
      ]"
