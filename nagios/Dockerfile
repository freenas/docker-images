FROM jasonrivers/nagios:latest
LABEL org.freenas.version=1                             \
      org.freenas.web-ui-protocol="http"                \
      org.freenas.expose-ports-at-host="true"           \
      org.freenas.web-ui-port=80                        \
      org.freenas.port-mappings="80:6580/tcp"           \
      org.freenas.volumes="[                            \
          {                                             \
              \"name\": \"/opt/nagios/etc\",            \
              \"descr\": \"nagios config\"              \
          },                                            \
          {                                             \
              \"name\": \"/opt/nagios/var\",            \
              \"descr\": \"nagios program storage\"     \
          },                                            \
          {                                             \
              \"name\": \"/opt/Custom-Nagios-Plugins\", \
              \"descr\": \"custom plugins\"             \
          }
       ]"
