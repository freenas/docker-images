FROM microsoft/mssql-server-linux:latest

LABEL org.freenas.interactive="false"                     \
      org.freenas.version="latest"                        \
      org.freenas.upgradeable="false"                     \
      org.freenas.expose-ports-at-host="true"             \
      org.freenas.autostart="true"                        \
      org.freenas.port-mappings="1433:1433/tcp"           \
      org.freenas.volumes="[                              \
          {                                               \
              \"name\": \"/var/opt/mssql",                \
              \"descr\": \"Database storage volume\"      \
          }                                               \
      ]"                                                  \
      org.freenas.settings="[                             \
          {                                               \
              \"env\": \"SA_PASSWORD\",                   \
              \"descr\": \"Sys Admin root password\",     \
              \"optional\": false                         \
          },                                              \
          {                                               \
              \"env\": \"ACCEPT_EULA\",                   \
              \"descr\": \"Enter Y to accept license\",   \
              \"optional\": false                         \
          }                                               \
      ]"