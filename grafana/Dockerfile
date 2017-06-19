FROM grafana/grafana:latest
LABEL org.freenas.version="3"                           \
      org.freenas.web-ui-protocol="http"                \
      org.freenas.expose-ports-at-host="true"           \
      org.freenas.web-ui-port=3000                      \
      org.freenas.port-mappings="3000:3000/tcp"         \
      org.freenas.volumes="[                            \
          {                                             \
              \"name\": \"/var/lib/grafana\",           \
              \"descr\": \"grafana program storage\"    \
          },                                            \
          {                                             \
              \"name\": \"/var/log/grafana\",           \
              \"descr\": \"grafana logs\"               \
          }                                             \
      ]"                                                \
      org.freenas.settings="[                           \
          {                                             \
              \"env\": \"GF_INSTALL_PLUGINS\",          \
              \"descr\": \"CSV List of plugins to install\", \
              \"optional\": true                        \
          },                                            \
          {                                             \
              \"env\": \"GF_SERVER_ROOT_URL\",          \
              \"descr\": \"Grafana server root URL\",   \
              \"optional\": true                        \
          },                                            \
          {                                             \
              \"env\": \"GF_SECURITY_ADMIN_PASSWORD\",  \
              \"descr\": \"Grafana server admin password\", \
              \"optional\": true                        \
          }                                             \
      ]"
