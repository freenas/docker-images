FROM wonderfall/searx:latest
LABEL org.freenas.interactive="true"			\
      org.freenas.version="0.1" 			\
      org.freenas.upgradeable="true" 			\
      org.freenas.expose-ports-at-host="true" 		\
      org.freenas.autostart="true" 			\
      org.freenas.primary-network-mode="BRIDGED" 	\
      org.freenas.web-ui-port="8901" 			\
      org.freenas.web-ui-path="/	" 			\
      org.freenas.port-mappings="8888:8901/tcp" 		\
      org.freenas.settings="[ 			\
          {					\
              \"env\": \"IMAGE_PROXY\",			\
              \"descr\": \"Enable image proxying\",	\
              \"optional\": true			\
          },					\
          {					\
              \"env\": \"BASE_URL\",			\
              \"descr\": \"http://domain.tld\",		\
              \"optional\": true			\
         }					\
      ]"
