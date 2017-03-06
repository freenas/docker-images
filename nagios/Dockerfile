FROM jasonrivers/nagios:latest
LABEL org.freenas.version="4.2.4"		      \
      org.freenas.web-ui-protocol="http"                \
      org.freenas.expose-ports-at-host="true"           \
      org.freenas.web-ui-port="6580"                    \
      org.freenas.port-mappings="80:6580/tcp"           \
      org.freenas.volumes="[                            \
          {                                             \
              \"name\": \"/opt/nagios/etc\",            \
              \"descr\": \"Nagios Config\"              \
          },                                            \
          {                                             \
              \"name\": \"/opt/Custom-Nagios-Plugins\", \
              \"descr\": \"Nagios Custom Plugins\"      \
          }						\
       ]"					\
      org.freenas.settings="[                           \
          {						\
              \"env\":   \"NAGIOS_TIMEZONE\",		\
	      \"descr\": \"Local Timezone\",            \
              \"optional\": true			\
          },						\	
          {						\
              \"env\":   \"NAGIOSADMIN_USER\",		\
	      \"descr\": \"Nagios Admin User\",         \
              \"optional\": true			\
          },						\
          {						\
              \"env\":   \"NAGIOSADMIN_PASS\",		\
	      \"descr\": \"Nagios Admin Password\",     \
              \"optional\": true			\
          }						\
       ]"
