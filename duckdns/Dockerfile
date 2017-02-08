FROM linuxserver/duckdns:latest
LABEL org.freenas.interactive="false"			\
      org.freenas.version="0.1" 			\
      org.freenas.upgradeable="true" 			\
      org.freenas.expose-ports-at-host="true" 		\
      org.freenas.autostart="true" 			\
      org.freenas.bridged="false" 			\
      org.freenas.web-ui-port=23456 			\
      org.freenas.web-ui-path="" 			\
      org.freenas.port-mappings="23456:80/tcp" 		\
      org.freenas.settings="[ 			\
          {					\
              \"env\": \"SUBDOMAINS\",			\
              \"descr\": \"DuckDNS Subdomains\",		\
              \"optional\": false			\
          },					\
          {					\
              \"env\": \"TOKEN\",			\
              \"descr\": \"DuckDNS Token\",		\
              \"optional\": false			\
          }, 					\					\
          {					\
              \"env\": \"TZ\",			\
              \"descr\": \"Timezone - eg Europe/London\",	\
              \"optional\": true			\
          },					\
          {					\
              \"env\": \"PGID\",			\
              \"descr\": \"GroupID\",			\
              \"optional\": true			\
          },					\
          {					\
              \"env\": \"PUID\",			\
              \"descr\": \"UserID\",			\
              \"optional\": true			\
         }					\
      ]"