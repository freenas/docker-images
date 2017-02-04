FROM jasonrivers/nagios:latest
LABEL org.freenas.version=4.2.4			        \
      org.freenas.web-ui-protocol="http"                \
      org.freenas.expose-ports-at-host="true"           \
      org.freenas.web-ui-port=80                        \
      org.freenas.port-mappings="80:6580/tcp"           \
      org.freenas.volumes="[                            \
          {                                             \
              \"name\": \"/opt/nagios/etc\",            \
              \"descr\": \"Nagios Config\"              \
          },                                            \
          {                                             \
              \"name\": \"/opt/nagios/var\",            \
              \"descr\": \"Nagios Program Storage\"     \
          },                                            \
          {                                             \
              \"name\": \"/opt/nagios/libexec\",        \
              \"descr\": \"libexec\"			\
          },                                            \
          {                                             \
              \"name\": \"/opt/Custom-Nagios-Plugins\", \
              \"descr\": \"Nagios Custom Plugins\"      \
          },						\
          {                                             \
              \"name\": \"/var/log/apache2\",           \
              \"descr\": \"Apache Web Server Logs\"     \
          },                                            \
          {                                             \
              \"name\": \"/usr/share/snmp/mibs\",       \
              \"descr\": \"SNMP\"			\
          }                                             \
       ]"						
