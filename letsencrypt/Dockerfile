FROM linuxserver/letsencrypt:latest
LABEL org.freenas.interactive="false" 				\
      org.freenas.version="1" 					\
      org.freenas.autostart="true" 				\
      org.freenas.privileged="true"				\
      org.freenas.web-ui-port=80				\
      org.freenas.port-mappings="80:8080/tcp,443:4343/tcp"	\
      org.freenas.volumes="[					\
          {							\
              \"name\": \"/config\",				\
              \"descr\": \"Config storage space\"		\
          }							\
      ]"							\
      org.freenas.settings="[ 					\
          {							\
              \"env\": \"EMAIL\",				\
              \"descr\": \"email for cert registration\",	\
              \"optional\": false				\
          },							\
          {							\
              \"env\": \"DHLEVEL\",				\
              \"descr\": \"dhparams bit value - default=2048\", \
              \"optional\": true				\
          },							\
          {							\
              \"env\": \"URL\",					\
              \"descr\": \"your domain name\",			\
              \"optional\": false				\
          },							\
          {							\
              \"env\": \"SUBDOMAINS\",				\
              \"descr\": \"subdomains (ie. www,ftp)\",		\
              \"optional\": true				\
          },							\
          {							\
              \"env\": \"ONLY_SUBDOMAINS\",			\
              \"descr\": \"no cert for main domain\",		\
              \"optional\": true				\
          },							\
          {							\
              \"env\": \"TZ\",					\
              \"descr\": \"timezone ie. America/New_York\",	\
              \"optional\": true				\
          },							\
          {							\
              \"env\": \"PGID\",				\
              \"descr\": \"GroupID\",				\
              \"optional\": true				\
          },							\
          {							\
              \"env\": \"PUID\",				\
              \"descr\": \"UserID\",				\
              \"optional\": true				\
         }							\
      ]"
