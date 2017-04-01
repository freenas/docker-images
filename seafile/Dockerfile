FROM sunx/seafile:latest
LABEL org.freenas.interactive="true"				\
      org.freenas.version="6.0.7" 				\
      org.freenas.expose-ports-at-host="true" 			\
      org.freenas.autostart="true" 				\
      org.freenas.web-ui-protocol="http" 			\
      org.freenas.web-ui-port=8000 				\
      org.freenas.port-mappings="8000:8000/tcp,8082:8082/tcp" 	\
      org.freenas.volumes="[					\
          {							\
              \"name\": \"/home/seafile\",			\
              \"descr\": \"Internal Path\"			\
          }							\
      ]"                                        \
      org.freenas.settings="[ 					\
          {							\
              \"env\": \"SEAHUB\",					\
              \"descr\": \"Set to fastcgi if desired otherwise empty\",		\
              \"optional\": true				\
          },							\
          {							\
              \"env\": \"SEAFILE_FASTCGI_HOST\",			\
              \"descr\": \"Binding ip for seahub in FastCGI mode. Default: 127.0.0.1.\",	\
              \"optional\": true				\
          }                                           \
      ]"

USER root
RUN apk add --update py-mysqldb
USER seafile
