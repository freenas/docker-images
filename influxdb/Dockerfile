FROM influxdb:latest
LABEL org.freenas.version="1.2.2"                       \
      org.freenas.interactive="false"                   \
      org.freenas.autostart="true"                      \
      org.freenas.web-ui-protocol="http"                \
      org.freenas.expose-ports-at-host="true"           \
      org.freenas.web-ui-port=8083                      \
      org.freenas.port-mappings="8083:8083/tcp,8086:8086/tcp,2003:2003/tcp" \
      org.freenas.volumes="[                            \
          {                                             \
              \"name\": \"/var/lib/influxdb\",          \
              \"descr\": \"InfluxDB program storage\"   \
          },                                            \
          {                                             \
              \"name\": \"/etc/influxdb\",              \
              \"descr\": \"InfluxDB configuration\"     \
          }                                             \
      ]"                                                \
      org.freenas.settings="[                           \
          {                                             \
              \"env\": \"INFLUXDB_GRAPHITE_ENABLED\",   \
              \"descr\": \"true/false uses port 2003\", \
              \"optional\": true                        \
          },                                            \
          {                                             \ 
              \"env\": \"INFLUXDB_GRAPHITE_DATABASE\",  \
              \"descr\": \"The name of the database that you want to write to.\", \
              \"optional\": true                        \
          },                                            \
          {                                             \
              \"env\": \"INFLUXDB_REPORTING_DISABLED\", \
              \"descr\": \"true will not sent anon data to usage.influxdata.com every 24 hours\", \
              \"optional\": true                        \
          },                                            \
          {                                             \
              \"env\": \"INFLUXDB_ADMIN_ENABLED\",      \
              \"descr\": \"Set to true to enable the admin interface\", \
              \"optional\": true                        \
          },                                            \ 
          {                                             \
              \"env\": \"PUID\",                        \
              \"descr\": \"UserID\",                    \
              \"optional\": true                        \
          },                                            \
          {                                             \
              \"env\": \"PGID\",                        \
              \"descr\": \"GroupID\",                   \
              \"optional\": true                        \
          },                                            \
          {                                             \
              \"env\": \"TZ\",                          \
              \"descr\": \"Timezone - eg Europe/London\", \
              \"optional\": true                        \
          }                                             \
      ]"
