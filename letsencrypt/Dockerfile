FROM linuxserver/letsencrypt:latest
LABEL org.freenas.interactive="false" 					\
      org.freenas.version="1" 						\
      org.freenas.autostart="true" 					\
      org.freenas.privileged="true"					\
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/config\",					\
              \"descr\": \"Config storage space\"			\
          }								\
      ]"								\
      org.freenas.settings="[ 						\
          {								\
              \"env\": \"EMAIL\",					\
              \"descr\": \"email for cert registration\",		\
              \"optional\": false					\
          },								\
          {								\
              \"env\": \"DHLEVEL\",					\
              \"descr\": \"encryption bits 2048/1024/4096\", 		\
              \"optional\": true					\
          },								\
          {								\
              \"env\": \"URL\",						\
              \"descr\": \"your domain name minus http://\",		\
              \"optional\": false					\
          },								\
          {								\
              \"env\": \"SUBDOMAINS\",					\
              \"descr\": \"your subdomains (ie. www,ftp,cloud)\",	\
              \"optional\": true					\
          },								\
          {								\
              \"env\": \"ONLY_SUBDOMAINS\",				\
              \"descr\": \"only get certs for certain subdomains\",	\
              \"optional\": true					\
          },								\
          {								\
              \"env\": \"TZ\",						\
              \"descr\": \"timezone ie. America/New_York\",		\
              \"optional\": true					\
          },								\
          {								\
              \"env\": \"PGID\",					\
              \"descr\": \"GroupID\",					\
              \"optional\": true					\
          },								\
          {								\
              \"env\": \"PUID\",					\
              \"descr\": \"UserID\",					\
              \"optional\": true					\
         }								\
      ]"
