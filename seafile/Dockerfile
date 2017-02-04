FROM sunx/seafile:latest
LABEL org.freenas.interactive="true"				\
      org.freenas.version="6.0.7" 				\
      org.freenas.expose-ports-at-host="true" 			\
      org.freenas.autostart="true" 				\
      org.freenas.bridged="true" 				\
      org.freenas.dhcp="true" \
      org.freenas.web-ui-protocol="http" 			\
      org.freenas.web-ui-port=8000 				\
      org.freenas.port-mappings="8000:8000/tcp,8082:8082/tcp" 	\
      org.freenas.volumes="[					\
          {							\
              \"name\": \"/home/seafile\",			\
              \"descr\": \"Internal Path\"			\
          }							\
      ]"
